require 'rails_helper'

include UsersHelper

RSpec.describe Post, type: :model do

  it 'has a title' do 
    post = Post.new(
      title: '',
      body: 'A valid body',
      user: test_user,
      views: 0
    )
    expect(post).to_not be_valid

    post.title = "A valid title"
    expect(post).to be_valid
  end

  it "has a title of at least 2 chars" do 
    post = Post.new(
      title: '1',
      body: 'A valid title',
      user: test_user,
      views: 0
    )
    expect(post).to_not be_valid
    post.title = '12'
    expect(post).to be_valid
  end

  it "has a body" do 
    post = Post.new(
      title: 'A valid body',
      body: '',
      user: test_user,
      views: 0
    )
    expect(post).to_not be_valid

    post.body = "A valid body"
    expect(post).to be_valid
  end

  it "has a body between 5 & 100 chars" do 
    STR_100='Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean m'
    STR_101='Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean ma'

    post = Post.new(
      title: 'A valid body',
      body: STR_101,
      user: test_user,
      views: 0
    )
    expect(post).to_not be_valid

    post.body = STR_100
    expect(post).to be_valid
  end

  it "has numerical views type INTEGER" do 
    post = Post.new(
      title: 'A valid title',
      body: 'A valid body',
      user: test_user,
      views: 0
    )
    expect(post.views).to be_a(Integer)
  end




  pending "views increase by 1 when visited) #{__FILE__}"


end
