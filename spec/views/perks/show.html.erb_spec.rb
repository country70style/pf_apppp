require 'rails_helper'

RSpec.describe "perks/show", type: :view do
  before(:each) do
    @perk = assign(:perk, Perk.create!(
      name: "Name",
      rate: 2,
      context: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
