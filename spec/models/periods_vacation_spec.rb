require 'rails_helper'

RSpec.describe PeriodsVacation, type: :model do
  describe "validations" do
    it { should belong_to(:employee) }
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :date_start }
    it { is_expected.to validate_presence_of :date_end }
    it { is_expected.to validate_presence_of :gross_salary }
    it { is_expected.to validate_presence_of :days }
    it { should validate_inclusion_of(:days).in_range(10..30) }
  end
end
