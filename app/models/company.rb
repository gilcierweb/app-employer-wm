class Company < ApplicationRecord
  include Orderable

  has_many :employees

  enum status: { no: false, yes: true }

  validates_presence_of :name
  validates_presence_of :fantasy_name
  validates_presence_of :cnpj

  def self.select_list()
    self.all.collect { |row| [row.name, row.id] }
  end
end
