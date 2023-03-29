class Employee < ApplicationRecord
  include Orderable

  belongs_to :company
  has_many :periods_vacations

  enum active: { no: false, yes: true }

  validates_presence_of :name
  validates_presence_of :admission_date
  validates_presence_of :cpf
  validates_presence_of :gross_salary

  def self.select_list()
    self.all.collect { |row| [row.name, row.id] }
  end
end
