require 'rails_helper'

RSpec.describe Member, type: :model do
  context 'when searching for members' do
    it 'finds two (2) engineers' do
      member1 = create(:member, firstname: 'Gwen', bio: 'Software Engineer')
      member2 = create(:member, firstname: 'Yi', bio: 'Full Stack Engineer')
      expect(Member.search_result('engineer')).to eq([member1, member2])
    end

    it 'finds no goblins' do
      expect(Member.search_result('goblin')).to be_empty
    end
  end
end
