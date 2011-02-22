# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
S3FileManager::Application.initialize!

AWS::S3::Base.establish_connection!(
      :access_key_id => "AKIAIW36YM46YELZCT3A",
      :secret_access_key => "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"
    )