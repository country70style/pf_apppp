require 'rails_helper'

RSpec.describe "weapons/index", type: :view do
  before(:each) do
    assign(:weapons, [
      Weapon.create!(
        name: "Name",
        attack: 2,
        fire_rate: 3,
        context: "MyText"
      ),
      Weapon.create!(
        name: "Name",
        attack: 2,
        fire_rate: 3,
        context: "MyText"
      )
    ])
  end

  it "renders a list of weapons" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
