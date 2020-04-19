require 'rails_helper'

RSpec.describe "perks/index", type: :view do
  before(:each) do
    assign(:perks, [
      Perk.create!(
        name: "Name",
        rate: 2,
        context: "MyText"
      ),
      Perk.create!(
        name: "Name",
        rate: 2,
        context: "MyText"
      )
    ])
  end

  it "renders a list of perks" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
