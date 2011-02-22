class ApplicationController < ActionController::Base
  protect_from_forgery

   protected
   def isuserloggedin
     if session[:currentuser].nil?
      redirect_to :controller => "authentications", :action => "new"
      return false
     end
      true
   end
end
