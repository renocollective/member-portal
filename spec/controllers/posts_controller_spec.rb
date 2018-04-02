require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:admin) { create(:admin) }
  let(:post1) { create(:post) }

  before(:each) do
    authenticate_member(admin)
  end

  it 'should get index' do
    get :index
    expect(response).to have_http_status(200)
  end

  it 'should get new' do
    get :new
    expect(response).to have_http_status(200)
  end

  it 'should create post' do
    params = {
      post: {
        title: 'This is a post',
        content: 'post content'
      }
    }
    expect do
      post :create, params: params
    end.to change { Post.count }.by(1)
  end

  it 'should show post' do
    get :show, params: { id: post1.id }
    expect(response).to have_http_status(200)
  end

  it 'should get edit' do
    get :edit, params: { id: post1.id }
    expect(response).to have_http_status(200)
  end

  it 'should update post' do
    patch :update, params: { id: post1.id, post: {} }
    expect(response).to redirect_to(post_path(post1))
  end

  it 'should destroy post' do
    post1.touch
    before_count = Post.count
    delete :destroy, params: { id: post1.id }
    expect(Post.count).to eq(before_count - 1)
    expect(response).to redirect_to(posts_path)
  end
end
