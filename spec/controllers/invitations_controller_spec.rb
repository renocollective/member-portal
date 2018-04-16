RSpec.describe InvitationsController, type: :controller do
  let(:member) { create(:member) }

  before(:each) do
    authenticate_member(member)
  end
end
