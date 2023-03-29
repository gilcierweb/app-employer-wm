require 'rails_helper'

RSpec.describe "admin/employees/new", type: :view do
  before(:each) do
    assign(:admin_employee, Employee.new(
      name: "MyString",
      cpf: 1,
      email: "MyString",
      location: "MyString",
      function: "MyString",
      wallet_working: 1,
      gross_salary: "9.99",
      active: false,
      company: nil
    ))
  end

  it "renders new admin_employee form" do
    render

    assert_select "form[action=?][method=?]", admin_employees_path, "post" do

      assert_select "input[name=?]", "admin_employee[name]"

      assert_select "input[name=?]", "admin_employee[cpf]"

      assert_select "input[name=?]", "admin_employee[email]"

      assert_select "input[name=?]", "admin_employee[location]"

      assert_select "input[name=?]", "admin_employee[function]"

      assert_select "input[name=?]", "admin_employee[wallet_working]"

      assert_select "input[name=?]", "admin_employee[gross_salary]"

      assert_select "input[name=?]", "admin_employee[active]"

      assert_select "input[name=?]", "admin_employee[company_id]"
    end
  end
end
