require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it "has a title" do
    aRecipe = Recipe.new
    aRecipe.title = "myTitle"
    expect(aRecipe.title).to eq("myTitle")
  end

  it "has a non-blank title" do
    aRecipe = Recipe.new
    aRecipe.author = "an author"
    aRecipe.ingredients = "some ingredients"
    aRecipe.instructions = "some instructions"
    expect(aRecipe.valid?).to eq false
  end

  it "has an author" do
    aRecipe = Recipe.new
    aRecipe.author = "myMaker!"
    expect(aRecipe.author).to eq("myMaker!")
  end

  it "has a non-blank author" do
    aRecipe = Recipe.new
    aRecipe.title = "a title"
    aRecipe.ingredients = "some ingredients"
    aRecipe.instructions = "some instructions"
    expect(aRecipe.valid?).to eq false
  end

  it "has ingredients" do
    aRecipe = Recipe.new
    aRecipe.ingredients = "the good stuff"
    expect(aRecipe.ingredients).to eq("the good stuff")
  end

  it "has non-blank ingredients" do
    aRecipe = Recipe.new
    aRecipe.title = "a title"
    aRecipe.author = "an author"
    aRecipe.instructions = "some instructions"
    expect(aRecipe.valid?).to eq false
  end

  it "has instructions" do
    aRecipe = Recipe.new
    aRecipe.instructions = "make it rull good"
    expect(aRecipe.instructions).to eq("make it rull good")
  end

  it "has non-blank instructions" do
    aRecipe = Recipe.new
    aRecipe.title = "a title"
    aRecipe.author = "an author"
    aRecipe.ingredients = "some ingredients"
    expect(aRecipe.valid?).to eq false
  end
end
