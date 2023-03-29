class Employee < ApplicationRecord
  belongs_to :company

  validates_presence_of :name
  validates_presence_of :admission_date
  validates_presence_of :cpf
  validates_presence_of :gross_salary
end
