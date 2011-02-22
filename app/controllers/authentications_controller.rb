class AuthenticationsController < ApplicationController
  # GET /authentications/new
  # GET /authentications/new.xml
  def new
    @error = nil
    @authentication = Authentication.new
  end

  # POST /authentications
  # POST /authentications.xml
  def create
    @error = nil
    authentication = Authentication.find(:all,:conditions => "username = '#{params[:username]}'")
      if authentication.count() > 0
        if authentication[0].password == params[:password]
            session[:currentuser] = authentication[0]
            redirecttohome
            return
        end
      end
      @error = "Invalid username or password entered!"
      @authentication = Authentication.new
      @authentication.username = params[:username]
      render :new
  end

  def register
    @authentication = Authentication.new
  end

  def createuser
    @error = nil
    authentication = Authentication.find(:all,:conditions => "username = '#{params[:username]}'")
      unless authentication.nil?
        if authentication.count() == 0
          newuser = Authentication.new
          newuser.username = params[:username]
          newuser.password = params[:password]
          if newuser.save
            session[:currentuser] = newuser
            redirecttohome
            return
          else
            @error = "Please input values properly!"
            @authentication = Authentication.new
            @authentication.username = params[:username]
            render :register
            return
          end
        end
      end
      @error = "Username already exists!"
      @authentication = Authentication.new
      @authentication.username = params[:username]
      render :register
  end

  def redirecttohome
    redirect_to dashboard_url
  end
end
