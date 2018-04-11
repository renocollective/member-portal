require 'rails_helper'

RSpec.describe Admin::CategoriesController, type: :controller do
  let(:admin) { create(:admin) }

  it 'should show categories admin dashboard if logged in as admin' do
    authenticate_member(admin)
    get :index
    expect(response.status).to eq(200)
  end
end
