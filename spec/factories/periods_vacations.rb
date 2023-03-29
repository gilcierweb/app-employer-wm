FactoryBot.define do
  factory :periods_vacation do
    name { "MyString" }
    date_start { "2023-03-29" }
    date_end { "2023-03-29" }
    gross_salary { "9.99" }
    average_value { "9.99" }
    number_dependents { 1 }
    pension_alimentary { "9.99" }
    bonus_pecuniary { false }
    advance_parcel { false }
    days { 1 }
    employee { nil }
  end
end
