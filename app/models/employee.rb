class Employee < ApplicationRecord
  scope :recently_created, -> { order(created_at: :desc) }

  belongs_to :company

  enum active: {no: false, yes: true}

  validates_presence_of :name
  validates_presence_of :admission_date
  validates_presence_of :cpf
  validates_presence_of :gross_salary
end
