require 'rails_helper'

RSpec.describe Company, type: :model do

  describe "validations" do
    it{ is_expected.to validate_presence_of :name }
    it{ is_expected.to validate_presence_of :fantasy_name }
    it{ is_expected.to validate_presence_of :cnpj }
  end
end
