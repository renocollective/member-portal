require 'rails_helper'

RSpec.describe AnnouncementsController, type: :controller do
  let(:admin) { create(:admin) }
  let(:announcement1) { create(:announcement) }

  before(:each) do
    authenticate_member(admin)
  end

  it 'should get new' do
    get :new
    expect(response).to have_http_status(200)
  end

  it 'should create announcement' do
    authenticate_member(admin)
    params = {
      announcement: {
        title: 'This is an announcement',
        content: 'announcement content'
      }
    }
    expect do
      post :create, params: params
    end.to change { Announcement.count }.by(1)
  end

  it 'should get edit' do
    get :edit, params: { id: announcement1.id }
    expect(response).to have_http_status(200)
  end

  it 'should update post' do
    patch :update, params: { id: announcement1.id, post: {} }
  end

  it 'should destroy announcement' do
    announcement2 = create(:announcement)
    announcement1.touch
    before_count = Announcement.count
    delete :destroy, params: { id: announcement1.id }
    expect(Announcement.count).to eq(before_count - 1)
    expect(announcement2).to be_persisted
  end
end
