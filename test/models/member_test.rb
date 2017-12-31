# frozen_string_literal: true

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  setup do
    @member1 = create(:member, firstname: 'Gwen', bio: 'Software engineer')
    @member2 = create(:member, firstname: 'Yi', bio: 'Software engineer')
  end

  test 'should not find search results' do
    @members = Member.search_result('Melissa')
    assert @members.empty?
  end

  test 'should find search results' do
    @members = Member.search_result('gwen')
    assert_equal @members, [@member1]
    @members = Member.search_result('engineer')
    assert_equal @members, [@member1, @member2]
  end
end
