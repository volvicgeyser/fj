require 'rails_helper'

RSpec.describe "favorites/show", type: :view do
  before(:each) do
    @favorite = assign(:favorite, Favorite.create!(
      :job_id => 2,
      :user_id => 3,
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
  end
end
