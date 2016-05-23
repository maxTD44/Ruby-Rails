require 'rails_helper'

RSpec.describe Tag, type: :model do
  it "should have a name" do
    aTag = Tag.new
    aTag.name = "string"
    expect(aTag.name).to eq "string"
  end

  it "should not accept an empty name" do
    aTag = Tag.new
    expect(aTag.valid?).to eq false
    aTag.name = "string"
    expect(aTag.valid?).to eq true
  end

# scrap this test, it's not testing the right thing
  # it "should be the same tag id if the tag string is the same" do
  #   aTag = Tag.new(name: "penguin")
  #   bTag = Tag.new
  #   bTag.name = "penguin"
  #   expect(aTag).to eq bTag
  # end
end
