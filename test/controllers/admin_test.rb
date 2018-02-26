# frozen_string_literal: true

require 'test_helper'

class AdminMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = create(:admin)
  end

  test 'should show admin dashboard' do
    login_as(@admin, 'scope' => :admin)
    get admin_root_url
    assert_response :success
  end
end
