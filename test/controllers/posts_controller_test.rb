# frozen_string_literal: true

require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = create(:member)
    @category = create(:category)
    @post = create(:post)
  end

  test 'should get index' do
    login_as(@member, 'scope' => :member)
    get posts_url
    assert_response :success
  end

  test 'should get new' do
    login_as(@member, 'scope' => :member)
    get new_post_url
    assert_response :success
  end

  test 'should create post' do
    login_as(@member, 'scope' => :member)
    assert_difference('Post.count') do
      post posts_url, params: {
        post: {
          title: 'This is a post',
          content: 'post content',
          category_id: 1
        }
      }
    end
  end

  test 'should show post' do
    login_as(@member, 'scope' => :member)
    get post_url(@post)
    assert_response :success
  end

  test 'should get edit' do
    login_as(@member, 'scope' => :member)
    get edit_post_url(@post)
    assert_response :success
  end

  test 'should update post' do
    login_as(@member, 'scope' => :member)
    patch post_url(@post), params: { post: {} }
  end

  test 'should destroy post' do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end
    assert_redirected_to posts_url
  end
end
