module AuthenticationHelper
  def authenticate_member(user)
    @request.env["devise.mapping"] = Devise.mappings[:member]
    sign_in user
  end
end
