# frozen_string_literal: true

# devise invite controller
class InvitationsController < Devise:: InvitationsController
  def edit
    super
  end

  def create
    @member = Member.invite!(create_resource_params)
    redirect_to admin_members_path, notice: 'Invite sent' if @member
  end

  private

  def create_resource_params
    params.require(:member).permit(:username, :email)
  end

  def update_resource_params
    params.require(:member).permit(:username, :firstname, :lastname,
                                   :password, :password_confirmation,
                                   :invitation_token)
  end
end
