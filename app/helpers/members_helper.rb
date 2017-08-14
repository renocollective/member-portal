# frozen_string_literal: true

# Member helper
module MembersHelper
  def search_params
    sanitize(params[:query].to_s)
  end
end
