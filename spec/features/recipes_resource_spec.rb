require 'rails_helper'

describe "the posting of recipes" do
  it "should allow a user to enter a recipe" do
    visit "/recipes/new"
    fill_in "Title", :with => "myTitle"
    fill_in "Author", :with => "an author"
    fill_in "Ingredients", :with => "some ingredients"
    fill_in "Instructions", :with => "some instructions"
    click_button "Create Recipe"
    page.should have_content "myTitle"
    page.should have_content "an author"
    page.should have_content "some ingredients"
    page.should have_content "some instructions"
    visit "/recipes"
    page.should have_content "myTitle"
    page.should have_content "an author"
    page.should have_content "some ingredients"
    page.should have_content "some instructions"
  end

end
