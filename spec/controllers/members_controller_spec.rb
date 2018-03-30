require 'rails_helper'

RSpec.describe MembersController, type: :controller do
  let(:member) { create(:member) }

  it 'should get index' do
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'should get new' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should create a member' do
    params = {
      member: {
        username: 'test-member',
        firstname: 'Test',
        lastname: 'Member',
        email: 'dinosaur@member.com',
        bio: 'Just a test member',
        password: 'member03',
        password_confirmation: 'member03'
      }
    }
    before_count = Member.count
    post :create, params: params
    expect(flash[:notice]).to eq('Member created.')
    member = Member.last
    expect(response).to redirect_to(member_path(member))
    expect(Member.count).to eq(before_count + 1)
  end

  it 'should get edit a member' do
    get :edit, params: { id: member.id }
    expect(response).to have_http_status(:success)
  end

  it 'should update a logged in member' do
    authenticate_member(member)
    patch :update, params: { id: member.id, member: {} }
    expect(response).to redirect_to(member_path(member))
  end

  it 'should destroy a member' do
    # TODO: We should protect against randos destroying other members.
    member.touch
    before_count = Member.count
    delete :destroy, params: { id: member.id }
    expect(Member.count).to eq(before_count - 1)
    expect(response).to redirect_to(members_url)
  end
end
