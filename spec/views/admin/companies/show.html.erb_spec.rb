require 'rails_helper'

RSpec.describe "admin/companies/show", type: :view do
  before(:each) do
    assign(:admin_company, Company.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Fantasy Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Owner Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Site Url/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Logo/)
    expect(rendered).to match(/false/)
  end
end
