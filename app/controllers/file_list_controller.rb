require "aws/s3"
class FileListController < ApplicationController
             before_filter :isuserloggedin
  def index
    unless params[:id].nil?
        @project = params[:id]
        session[:bucket_name] = @project
        @bucket =  AWS::S3::Bucket.find(@project)
    else
        redirect_to :controller => "dashboard"
    end
  end

  def upload
  end

end
