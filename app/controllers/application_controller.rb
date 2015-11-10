class ApplicationController < ActionController::Base
  
  before_filter :authenticate

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV["NAME"] && password == ENV["PASSWORD"]
      end
    end
  end

end
