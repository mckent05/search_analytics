# frozen_string_literal: true

FactoryBot.define do
  factory :query do
    association :user
    query { 'Sample query text' }
  end
end
