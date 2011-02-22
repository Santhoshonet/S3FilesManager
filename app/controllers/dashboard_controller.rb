class DashboardController < ApplicationController
              before_filter :isuserloggedin
  def index
    @buckets = AWS::S3::Service.buckets(:reload)
  end

end
