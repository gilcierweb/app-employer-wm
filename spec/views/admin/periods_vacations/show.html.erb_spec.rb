require 'rails_helper'

RSpec.describe "admin/periods_vacations/show", type: :view do
  before(:each) do
    assign(:admin_periods_vacation, PeriodsVacation.create!(
      name: "Name",
      gross_salary: "9.99",
      average_value: "9.99",
      number_dependents: 2,
      pension_alimentary: "9.99",
      bonus_pecuniary: false,
      advance_parcel: false,
      days: 3,
      employee: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
