require 'rails_helper'

RSpec.describe "favorites/edit", type: :view do
  before(:each) do
    @favorite = assign(:favorite, Favorite.create!(
      :job_id => 1,
      :user_id => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit favorite form" do
    render

    assert_select "form[action=?][method=?]", favorite_path(@favorite), "post" do

      assert_select "input#favorite_job_id[name=?]", "favorite[job_id]"

      assert_select "input#favorite_user_id[name=?]", "favorite[user_id]"

      assert_select "textarea#favorite_comment[name=?]", "favorite[comment]"
    end
  end
end
