FactoryBot.define do
  factory :company do
    name { "MyString" }
    fantasy_name { "MyString" }
    cnpj { 1 }
    owner_name { "MyString" }
    location { "MyString" }
    site_url { "MyString" }
    email { "MyString" }
    description { "MyText" }
    birth_date { "2023-03-29" }
    logo { "MyString" }
    active { false }
  end
end
