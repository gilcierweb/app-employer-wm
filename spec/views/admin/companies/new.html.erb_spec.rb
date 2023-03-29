require 'rails_helper'

RSpec.describe "admin/companies/new", type: :view do
  before(:each) do
    assign(:admin_company, Company.new(
      name: "MyString",
      fantasy_name: "MyString",
      cnpj: 1,
      owner_name: "MyString",
      location: "MyString",
      site_url: "MyString",
      email: "MyString",
      description: "MyText",
      logo: "MyString",
      active: false
    ))
  end

  it "renders new admin_company form" do
    render

    assert_select "form[action=?][method=?]", admin_companies_path, "post" do

      assert_select "input[name=?]", "admin_company[name]"

      assert_select "input[name=?]", "admin_company[fantasy_name]"

      assert_select "input[name=?]", "admin_company[cnpj]"

      assert_select "input[name=?]", "admin_company[owner_name]"

      assert_select "input[name=?]", "admin_company[location]"

      assert_select "input[name=?]", "admin_company[site_url]"

      assert_select "input[name=?]", "admin_company[email]"

      assert_select "textarea[name=?]", "admin_company[description]"

      assert_select "input[name=?]", "admin_company[logo]"

      assert_select "input[name=?]", "admin_company[active]"
    end
  end
end
