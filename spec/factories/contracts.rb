FactoryBot.define do
  factory :contract do
    price { 1.5 }
    start_date { "2021-07-20" }
    end_date { "2021-07-20" }
    expiry_date { "2021-07-20" }
    customer { nil }
  end
end
