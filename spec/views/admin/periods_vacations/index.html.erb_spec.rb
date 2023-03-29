require 'rails_helper'

RSpec.describe "admin/periods_vacations/index", type: :view do
  before(:each) do
    assign(:periods_vacations, [
      PeriodsVacation.create!(
        name: "Name",
        gross_salary: "9.99",
        average_value: "9.99",
        number_dependents: 2,
        pension_alimentary: "9.99",
        bonus_pecuniary: false,
        advance_parcel: false,
        days: 3,
        employee: nil
      ),
      PeriodsVacation.create!(
        name: "Name",
        gross_salary: "9.99",
        average_value: "9.99",
        number_dependents: 2,
        pension_alimentary: "9.99",
        bonus_pecuniary: false,
        advance_parcel: false,
        days: 3,
        employee: nil
      )
    ])
  end

  it "renders a list of admin/periods_vacations" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
