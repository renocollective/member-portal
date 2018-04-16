RSpec.describe CommentsController, type: :controller do
  let(:member) { create(:member) }
  let(:post1) { create(:post) }
  let(:category1) { create(:category) }
  let(:comment1) do
    Comment.create(content: 'testing', member_id: member.id, post_id: post1.id)
  end

  before(:each) do
    authenticate_member(member)
  end

  # it 'should create comment' do
  #   params = {
  #     comment: {
  #       content: 'comment content',
  #       post_id: post1.id,
  #       member_id: member.id
  #     }
  #   }
  #   expect do
  #     post :create, params: params, post_id: post1.id
  #   end.to change { Comment.count }.by(1)
  # end

  # it 'should update comment' do
  #   patch :update, params: { id: post1.id, comment: {} }
  #   expect(response).to redirect_to(post_path(post1))
  # end

  # it 'should destroy comment' do
  #   comment1.touch
  #   before_count = Comment.count
  #   delete :destroy, params: { id: comment1.id }
  #   expect(Comment.count).to eq(before_count - 1)
  # end
end
