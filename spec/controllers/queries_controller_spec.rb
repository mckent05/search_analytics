require 'rails_helper'

RSpec.describe QueriesController, type: :controller do
  let!(:user) { create(:user, ip_address: '192.168.1.1') }

  describe 'GET #index' do
    it 'returns analytics data in JSON format' do
      create(:query, query: 'test', user: user)

      get :index, format: :json

      expect(response).to have_http_status(:success)
      json_response = JSON.parse(response.body)
      expect(json_response['data']).to eq({'test' => 1})
    end

    it 'renders the index template for HTML requests' do
      get :index, format: :html
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
    end
  end

  describe 'POST #create' do
    context 'with valid parameters' do
      it 'creates a new query for the user' do
        expect {
          post :create, params: { query: 'new query' }, format: :json
        }.to change(Query, :count).by(1)

        expect(response).to have_http_status(:success)
        json_response = JSON.parse(response.body)
        expect(json_response['status']).to eq('success')
      end

      it 'updates the existing query if it exists' do
        existing_query = user.queries.create!(query: 'new query')

        post :create, params: { query: 'new query updated' }, format: :json

        existing_query.reload
        expect(existing_query.query).to eq('new query')
        expect(response).to have_http_status(:success)
        json_response = JSON.parse(response.body)
        expect(json_response['status']).to eq('success')
      end
    end

    context 'with invalid parameters' do
      it 'returns an error when the query is blank' do
        post :create, params: { query: '' }, format: :json

        expect(response).to have_http_status(:unprocessable_entity)
        json_response = JSON.parse(response.body)
        expect(json_response['status']).to eq('error')
        expect(json_response['message']).to eq('Query parameter cannot be blank')
      end
    end
  end
end
