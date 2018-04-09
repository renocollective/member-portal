# frozen_string_literal: true

# devise invite controller
class InvitationsController < Devise:: InvitationsController
  def edit
    super
  end

  private

  def update_resource_params
    params.require(:member).permit(:username, :firstname, :lastname,
                                   :password, :password_confirmation,
                                   :invitation_token)
  end
end
