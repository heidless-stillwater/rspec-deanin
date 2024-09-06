require 'rails_helper'

include UsersHelper

RSpec.describe "posts/edit", type: :view do
  let(:post) {
    Post.create!(
      title: "MyString",
      body: "MyText",
      user: test_user,
      views: 1
    )
  }

  before(:each) do
    assign(:post, post)
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(post), "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[body]"
      
    end
  end
end
