# frozen_string_literal: true

require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = create(:category)
    @member = create(:member)
    login_as(@member, 'scope' => :member)
  end

  test 'should create category' do
    assert_difference('Category.count') do
      post posts_url, params: {
        category: {
          name: 'Category'
        }
      }
    end
  end

  test 'should get new' do
    get new_category_url
    assert_response :success
  end

  test 'should destroy category' do
    assert_difference('Category.count', -1) do
      delete category_url(@category)
    end
  end
end
