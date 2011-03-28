class ApplicationController < ActionController::Base
  protect_from_forgery
  protected
  def isuserloggedin
    if ENV['RAILS_ENV'] != 'test'
      if session[:currentuser].nil?
        redirect_to :controller => "authentications", :action => "new"
        return false
      else
        return true
      end
    else
        true
    end
  end
end
