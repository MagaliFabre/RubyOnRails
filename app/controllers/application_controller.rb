class ApplicationController < ActionController::Base
    # helper_method :current_user
  
    # def current_user
    #   # Your logic to retrieve the current user, for example, if using Devise:
    #   @current_user ||= current_user
    # end
    # app/controllers/application_controller.rb
  before_action :authenticate_user!, only: [:show]

  def show
    @user = current_user
  end
end

  
