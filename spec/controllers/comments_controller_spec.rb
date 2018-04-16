RSpec.describe CommentsController, type: :controller do
  let(:member) { create(:member) }
  let(:post1) { create(:post) }
  let(:category1) { create(:category) }
  let(:comment1) { create(:comment) }

  before(:each) do
    authenticate_member(member)
  end
end
