require 'rails_helper'

RSpec.describe "admin/companies/edit", type: :view do
  let(:admin_company) {
    Company.create!(
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
    )
  }

  before(:each) do
    assign(:admin_company, admin_company)
  end

  it "renders the edit admin_company form" do
    render

    assert_select "form[action=?][method=?]", admin_company_path(admin_company), "post" do

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
