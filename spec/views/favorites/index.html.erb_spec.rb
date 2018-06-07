require 'rails_helper'

RSpec.describe "favorites/index", type: :view do
  before(:each) do
    assign(:favorites, [
      Favorite.create!(
        :job_id => 2,
        :user_id => 3,
        :comment => "MyText"
      ),
      Favorite.create!(
        :job_id => 2,
        :user_id => 3,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of favorites" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
