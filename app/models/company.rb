class Company < ApplicationRecord
  has_many :employees
  validates_presence_of :name
  validates_presence_of :fantasy_name
  validates_presence_of :cnpj
end
