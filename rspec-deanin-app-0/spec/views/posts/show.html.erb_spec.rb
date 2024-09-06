require 'rails_helper'

include UsersHelper

RSpec.describe "posts/show", type: :view do
  before(:each) do
    assign(:post, Post.create!(
      title: "Title",
      body: "MyText",
      user: test_user,
      views: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
