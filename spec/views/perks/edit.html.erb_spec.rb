require 'rails_helper'

RSpec.describe "perks/edit", type: :view do
  before(:each) do
    @perk = assign(:perk, Perk.create!(
      name: "MyString",
      rate: 1,
      context: "MyText"
    ))
  end

  it "renders the edit perk form" do
    render

    assert_select "form[action=?][method=?]", perk_path(@perk), "post" do

      assert_select "input[name=?]", "perk[name]"

      assert_select "input[name=?]", "perk[rate]"

      assert_select "textarea[name=?]", "perk[context]"
    end
  end
end
