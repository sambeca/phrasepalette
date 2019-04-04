class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: :create

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end
end
