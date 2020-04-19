require 'rails_helper'

RSpec.describe "perks/new", type: :view do
  before(:each) do
    assign(:perk, Perk.new(
      name: "MyString",
      rate: 1,
      context: "MyText"
    ))
  end

  it "renders new perk form" do
    render

    assert_select "form[action=?][method=?]", perks_path, "post" do

      assert_select "input[name=?]", "perk[name]"

      assert_select "input[name=?]", "perk[rate]"

      assert_select "textarea[name=?]", "perk[context]"
    end
  end
end
