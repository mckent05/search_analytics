FactoryBot.define do
  factory :user do
    ip_address { "192.168.1.1" } # You can modify this as needed

    trait :with_queries do
      after(:create) do |user|
        create_list(:query, 3, user: user)
      end
    end
  end
end
