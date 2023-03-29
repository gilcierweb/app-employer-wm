require 'rails_helper'

RSpec.describe "admin/companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        name: "Name",
        fantasy_name: "Fantasy Name",
        cnpj: 2,
        owner_name: "Owner Name",
        location: "Location",
        site_url: "Site Url",
        email: "Email",
        description: "MyText",
        logo: "Logo",
        active: false
      ),
      Company.create!(
        name: "Name",
        fantasy_name: "Fantasy Name",
        cnpj: 2,
        owner_name: "Owner Name",
        location: "Location",
        site_url: "Site Url",
        email: "Email",
        description: "MyText",
        logo: "Logo",
        active: false
      )
    ])
  end

  it "renders a list of admin/companies" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Fantasy Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Owner Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Location".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Site Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Logo".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
