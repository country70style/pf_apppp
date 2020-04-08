require 'rails_helper'

RSpec.describe "weapons/new", type: :view do
  before(:each) do
    assign(:weapon, Weapon.new(
      name: "MyString",
      attack: 1,
      rate: 1,
      context: "MyText"
    ))
  end

  it "renders new weapon form" do
    render

    assert_select "form[action=?][method=?]", weapons_path, "post" do

      assert_select "input[name=?]", "weapon[name]"

      assert_select "input[name=?]", "weapon[attack]"

      assert_select "input[name=?]", "weapon[rate]"

      assert_select "textarea[name=?]", "weapon[context]"
    end
  end
end
