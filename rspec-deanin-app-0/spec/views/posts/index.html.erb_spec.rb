require 'rails_helper'

include UsersHelper

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        title: "Title",
        body: "MyText",
        user: test_user,
        views: 14
      ),
      Post.create!(
        title: "Title",
        body: "MyText",
        user: test_user,
        views: 12
      )
    ])
  end

  it "renders a list of posts" do
    render
    cell_selector = 'tr>td'
    assert_select cell_selector, text: "Title".to_s, count: 2
    assert_select cell_selector, text: "MyText".to_s, count: 2
    assert_select cell_selector, text: test_user.id.to_s, count: 2
    assert_select cell_selector, text: 14.to_s, count: 1
    assert_select cell_selector, text: 12.to_s, count: 1
  end
end
