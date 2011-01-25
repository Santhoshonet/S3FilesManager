require "aws/s3"
class FileListController < ApplicationController
             before_filter :isuserloggedin
  def index

    AWS::S3::Base.establish_connection!(
      :access_key_id => "AKIAIW36YM46YELZCT3A",
      :secret_access_key => "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"
    )

    @buckets = AWS::S3::Service.buckets(:reload)

  end

  def upload



  end


end
