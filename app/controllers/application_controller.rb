class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :auth

  private

  def auth
    authenticate_or_request_with_http_basic('Administration') { |username, password|
      username == 'study' && password == 'card'
    }
  end


end
