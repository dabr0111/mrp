class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  #skip_before_filter :verify_authenticity_token, :only => :create
  skip_before_action :verify_authenticity_token, :only => :create

  before_action :set_current_user
  protected # prevents method from being invoked by a route
  def set_current_user
    # we exploit the fact that the below query may return nil
    #debugger
    @current_user ||= Moviegoer.where(:id => session[:user_id])
   redirect_to login_path and return unless @current_user
  end  

end
