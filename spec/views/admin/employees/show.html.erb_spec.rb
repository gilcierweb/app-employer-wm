require 'rails_helper'

RSpec.describe "admin/employees/show", type: :view do
  before(:each) do
    assign(:admin_employee, Employee.create!(
      name: "Name",
      cpf: 2,
      email: "Email",
      location: "Location",
      function: "Function",
      wallet_working: 3,
      gross_salary: "9.99",
      active: false,
      company: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Function/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
