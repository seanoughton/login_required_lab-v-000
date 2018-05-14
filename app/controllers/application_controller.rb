class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    #return head(:forbidden) unless session.include? :name
=begin
    name = nil
    if session.include? :name
      name = session[:name]
    end
    name
=end
    #name = session[:name] || name = nil
    session[:name] ||= nil
  end
end
