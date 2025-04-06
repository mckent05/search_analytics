FactoryBot.define do
  factory :query do
    association :user
    query { "Sample query text" }
  end
end
