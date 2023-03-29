require 'rails_helper'

RSpec.describe "admin/employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        name: "Name",
        cpf: 2,
        email: "Email",
        location: "Location",
        function: "Function",
        wallet_working: 3,
        gross_salary: "9.99",
        active: false,
        company: nil
      ),
      Employee.create!(
        name: "Name",
        cpf: 2,
        email: "Email",
        location: "Location",
        function: "Function",
        wallet_working: 3,
        gross_salary: "9.99",
        active: false,
        company: nil
      )
    ])
  end

  it "renders a list of admin/employees" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Location".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Function".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
