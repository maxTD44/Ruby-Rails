require 'rails_helper'

describe "adding tag to a recipe" do

  it "should allow a user to add a tag to a recipe" do
    visit "/recipes/new"
    fill_in 'Title', :with =>'myTitle'
    fill_in 'Author', :with =>'myAuthor'
    fill_in 'Ingredients', :with =>'myIngredients'
    fill_in 'Instructions', :with =>'myInstructions'
    click_button 'Create Recipe'
    fill_in "Tag Name", :with => "myTag"
    click_button "Create Tag"
    page.should have_content "myTag"
  end

  it "should allow you to create a tag" do
    visit "/recipes/new"
    fill_in 'Title', :with =>'myTitle'
    fill_in 'Author', :with =>'myAuthor'
    fill_in 'Ingredients', :with =>'myIngredients'
    fill_in 'Instructions', :with =>'myInstructions'
    click_button 'Create Recipe'
    fill_in "Tag Name", :with => "string"
    # click_button "Create Tag"
    expect(find_field("Tag Name").value).to eq "string"
  end

  it "should check the database for a tag with the same name as user input" do

  end

  it "should create a new tag if the tag name isn't in the database yet" do

  end
end
