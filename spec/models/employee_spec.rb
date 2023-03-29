require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe "validations" do
    it { should belong_to(:company) }
    it { should have_many(:periods_vacations) }
    it{ is_expected.to validate_presence_of :name }
    it{ is_expected.to validate_presence_of :admission_date }
    it{ is_expected.to validate_presence_of :cpf }
    it{ is_expected.to validate_presence_of :gross_salary }
  end
end
