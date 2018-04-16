RSpec.describe HomeController, type: :controller do
  let(:member) { create(:member) }

  before(:each) do
    authenticate_member(member)
  end

  it 'should get index' do
    get :index
    expect(response).to have_http_status(200)
  end
end
