require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:admin) { create(:admin) }
  let(:post1) { create(:post) }
  let(:category1) { create(:category) }

  before(:each) do
    authenticate_member(admin)
  end

  it 'should get index' do
    get :index
    expect(response).to have_http_status(200)
  end

  describe 'posts aka conversations with pagination' do
    context 'when specifying last page' do
      it 'should return short page of results' do
        create_list(:post, 4)
        get :index, params: { page: 2, per_page: 3 }
        expect(assigns(:posts).length).to be < 3
        expect(response).to have_http_status(200)
      end
    end
    context 'without specifying page' do
      it 'should return one page of results' do
        create_list(:post, 16)
        get :index
        expect(assigns(:posts).length).to eq(10)
        expect(response).to have_http_status(200)
      end
    end
    context 'when specifying page out of range' do
      it 'should return no results' do
        create_list(:post, 2)
        get :index, params: { page: 4 }
        expect(assigns(:posts).length).to eq(0)
        expect(response).to have_http_status(200)
      end
    end
    context 'with category filter' do
      it 'should return posts for category' do
        food_category = create(:category, name: 'Food')
        create(:post, category_id: food_category.id)
        get :index, params: { category: 'Food' }
        expect(assigns(:posts).length).to eq(1)
        expect(response).to have_http_status(200)
      end
    end
  end

  it 'should get new' do
    get :new
    expect(response).to have_http_status(200)
  end

  it 'should create post' do
    params = {
      post: {
        title: 'This is a post',
        content: 'post content',
        category_id: category1.id
      }
    }
    expect do
      post :create, params: params
    end.to change { Post.count }.by(1)
  end

  it 'should not create post' do
    params = {
      post: {
      }
    }
    expect do
      post :create, params: params
    end.to change { Post.count }.by(0)
  end

  it 'should show post' do
    get :show, params: { slug: post1.slug }
    expect(response).to have_http_status(200)
  end

  it 'should get edit' do
    get :edit, params: { slug: post1.slug }
    expect(response).to have_http_status(200)
  end

  it 'should update post' do
    patch :update, params: { slug: post1.slug, post: {} }
    expect(response).to redirect_to(post_path(post1))
  end

  it 'should destroy post' do
    post2 = create(:post)
    post1.touch
    before_count = Post.count
    delete :destroy, params: { slug: post1.slug }
    expect(Post.count).to eq(before_count - 1)
    expect(response).to redirect_to(posts_path)
    expect(post2).to be_persisted
  end
end
