require 'rails_helper'

RSpec.describe "favorites/new", type: :view do
  before(:each) do
    assign(:favorite, Favorite.new(
      :job_id => 1,
      :user_id => 1,
      :comment => "MyText"
    ))
  end

  it "renders new favorite form" do
    render

    assert_select "form[action=?][method=?]", favorites_path, "post" do

      assert_select "input#favorite_job_id[name=?]", "favorite[job_id]"

      assert_select "input#favorite_user_id[name=?]", "favorite[user_id]"

      assert_select "textarea#favorite_comment[name=?]", "favorite[comment]"
    end
  end
end
