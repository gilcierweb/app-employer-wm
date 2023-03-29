class PeriodsVacation < ApplicationRecord
  include Orderable

  enum bonus_pecuniary: { no: false, yes: true }
  enum advance_parcel: { no_ap: false, yes_ap: true }

  belongs_to :employee

  validates_presence_of :name
  validates_presence_of :date_start
  validates_presence_of :date_end
  validates_presence_of :gross_salary
  validates_presence_of :days
  validates_inclusion_of :days, in: 10..30
end
