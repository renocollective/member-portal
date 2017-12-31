# frozen_string_literal: true

require 'application_system_test_case'

class MembersTest < ApplicationSystemTestCase
  setup do
    @member1 = create(:member, username: 'weneng', bio: 'Software engineer')
    @member2 = create(:member, firstname: 'yides', bio: 'UX Designer')
  end

  test 'searching expect one result' do
    visit members_url
    assert_selector 'h1', text: 'Member'
    fill_in 'query', with: 'engineer'
    click_button('Search')
    assert_text 'weneng'
    assert_no_text 'yides'
  end

  test 'searching expect no results' do
    visit members_url
    assert_selector 'h1', text: 'Member'
    fill_in 'query', with: 'Wordpress'
    click_button('Search')
    assert_text 'No members found'
  end
end
