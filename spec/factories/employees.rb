FactoryBot.define do
  factory :employee do
    name { "MyString" }
    admission_date { "2023-03-29" }
    cpf { 1 }
    email { "MyString" }
    birth_date { "2023-03-29" }
    location { "MyString" }
    function { "MyString" }
    wallet_working { 1 }
    gross_salary { "9.99" }
    active { false }
    company { nil }
  end
end
