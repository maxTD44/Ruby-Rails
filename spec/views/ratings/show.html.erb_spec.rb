require 'rails_helper'

RSpec.describe "ratings/show", type: :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      :recipe_id => 1,
      :rating => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
