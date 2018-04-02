require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:admin) { create(:admin) }
  let(:post1) { create(:post) }
  let(:category1) { create(:category) }

  before(:each) do
    authenticate_member(admin)
  end

  it 'should create category' do
    params = {
      category: {
        name: 'newCategory'
      }
    }
    expect do
      post :create, params: params
    end.to change { Category.count }.by(1)
  end

  it 'should get new' do
    get :new
    expect(response).to have_http_status(200)
  end

  it 'should destroy category' do
    category2 = create(:category)
    category1.touch
    before_count = Category.count
    delete :destroy, params: { id: category1.id }
    expect(Category.count).to eq(before_count - 1)
    expect(category2).to be_persisted
  end
end
