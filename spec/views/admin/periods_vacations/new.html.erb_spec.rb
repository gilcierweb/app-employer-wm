require 'rails_helper'

RSpec.describe "admin/periods_vacations/new", type: :view do
  before(:each) do
    assign(:admin_periods_vacation, PeriodsVacation.new(
      name: "MyString",
      gross_salary: "9.99",
      average_value: "9.99",
      number_dependents: 1,
      pension_alimentary: "9.99",
      bonus_pecuniary: false,
      advance_parcel: false,
      days: 1,
      employee: nil
    ))
  end

  it "renders new admin_periods_vacation form" do
    render

    assert_select "form[action=?][method=?]", admin_periods_vacations_path, "post" do

      assert_select "input[name=?]", "admin_periods_vacation[name]"

      assert_select "input[name=?]", "admin_periods_vacation[gross_salary]"

      assert_select "input[name=?]", "admin_periods_vacation[average_value]"

      assert_select "input[name=?]", "admin_periods_vacation[number_dependents]"

      assert_select "input[name=?]", "admin_periods_vacation[pension_alimentary]"

      assert_select "input[name=?]", "admin_periods_vacation[bonus_pecuniary]"

      assert_select "input[name=?]", "admin_periods_vacation[advance_parcel]"

      assert_select "input[name=?]", "admin_periods_vacation[days]"

      assert_select "input[name=?]", "admin_periods_vacation[employee_id]"
    end
  end
end
