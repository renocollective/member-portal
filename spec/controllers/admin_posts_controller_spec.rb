require 'rails_helper'

RSpec.describe Admin::PostsController, type: :controller do
  let(:admin) { create(:admin) }
  let(:post1) { create(:post) }

  it 'should show posts admin dashboard if logged in as admin' do
    authenticate_member(admin)
    get :index
    expect(response.status).to eq(200)
  end

  it 'should show post from admin dashboard' do
    authenticate_member(admin)
    get :show, params: { slug: post1.slug }
    expect(response.status).to eq(200)
  end
end
