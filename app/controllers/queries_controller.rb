# frozen_string_literal: true

class QueriesController < ApplicationController
  def index
    analytics = Query.joins(:user)
                     .group(:query)
                     .select('queries.query, COUNT(DISTINCT users.id) AS user_count')
                     .order('user_count DESC')
                     .map { |record| [record.query.titleize, record.user_count] }
                     .to_h
    respond_to do |format|
      format.html
      format.json do
        render json: {
          data: analytics
        }
      end
    end
  end

  def create
    query = params[:query].strip.downcase
    ip_address = request.remote_ip

    if query.blank?
      return render json: { status: 'error', message: 'Query parameter cannot be blank' }, status: :unprocessable_entity
    end

    user = user(ip_address)
    parts = (1..query.length).map { |i| query[0, i] }
    user_query = user.queries.existing_query(parts).last

    if user_query && query_exists?(user_query, query)
      update_or_create_query(user_query, query)
    else
      create_new_query(user, query)
    end
  end

  private

  def user(ip_address)
    User.find_or_create_by(ip_address:)
  end

  def query_exists?(user_query, query)
    query.start_with?(user_query.query)
  end

  def update_or_create_query(user_query, query)
    user_query.update(query:)
  end

  def create_new_query(user, query)
    new_query = user.queries.build(query:)

    if new_query.save
      render json: { status: 'success', message: 'New query saved successfully' }
    else
      render json: { status: 'error', message: new_query.errors.full_messages.join(', ') },
             status: :unprocessable_entity
    end
  end
end
