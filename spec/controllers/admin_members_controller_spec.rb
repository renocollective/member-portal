require 'rails_helper'

RSpec.describe Admin::MembersController, type: :controller do
  let(:admin) { create(:admin) }

  it 'should show member admin dashboard if logged in as admin' do
    authenticate_member(admin)
    get :index
    expect(response.status).to eq(200)
  end

  it 'should show member from admin dashboard' do
    authenticate_member(admin)
    get :show, params: { username: admin.username }
    expect(response.status).to eq(200)
  end
end
