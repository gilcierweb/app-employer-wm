# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 5.times do
#
# end
user = User.create(username: nil, password: nil)

user = User.find(user)
user.add_role :admin
user.has_role? :admin

user.add_role? :manager
user.has_role? :manager

user.add_role? :employee
user.has_role? :employee

puts 'Create Company'
10.times do
  name = Faker::Company.name
  fantasy_name = Faker::Company.name
  cnpj = Faker::Company.brazilian_company_number
  owner_name = Faker::Name.name
  location = Faker::Address.full_address
  site_url = Faker::Internet.url
  email = Faker::Internet.email
  description = Faker::Lorem.paragraph
  birth_date = Faker::Date.birthday(min_age: 18, max_age: 65)
  logo = Faker::Company.logo
  active = Faker::Boolean.boolean

  params = {
    name: name,
    fantasy_name: fantasy_name,
    cnpj: cnpj,
    owner_name: owner_name,
    location: location,
    site_url: site_url,
    email: email,
    description: description,
    birth_date: birth_date,
    logo: logo,
    active: active
  }

  Company.create(params)
end

puts 'Create Employee'
100.times do
  params = {
    name: Faker::Name.name,
    admission_date: Faker::Date.between(from: 5.years.ago, to: Date.today),
    cpf: Faker::IDNumber.brazilian_citizen_number(formatted: false),
    email: Faker::Internet.email(name: name),
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    location: Faker::Address.full_address,
    function: Faker::Job.title,
    wallet_working: Faker::Number.decimal(l_digits: 2),
    gross_salary: Faker::Number.between(from: 2000, to: 10000),
    active: Faker::Boolean.boolean,
    company_id: Faker::Number.between(from: 1, to: 10)
  }

  Employee.create(params)
end