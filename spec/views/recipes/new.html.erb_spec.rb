require 'rails_helper'

RSpec.describe "recipes/new", type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      :name => "MyString",
      :cook_time => 1,
      :how_to => "MyText"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input#recipe_name[name=?]", "recipe[name]"

      assert_select "input#recipe_cook_time[name=?]", "recipe[cook_time]"

      assert_select "textarea#recipe_how_to[name=?]", "recipe[how_to]"
    end
  end
end
