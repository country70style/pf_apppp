require 'rails_helper'

RSpec.describe "weapons/edit", type: :view do
  before(:each) do
    @weapon = assign(:weapon, Weapon.create!(
      name: "MyString",
      attack: 1,
      rate: 1,
      context: "MyText"
    ))
  end

  it "renders the edit weapon form" do
    render

    assert_select "form[action=?][method=?]", weapon_path(@weapon), "post" do

      assert_select "input[name=?]", "weapon[name]"

      assert_select "input[name=?]", "weapon[attack]"

      assert_select "input[name=?]", "weapon[rate]"

      assert_select "textarea[name=?]", "weapon[context]"
    end
  end
end
