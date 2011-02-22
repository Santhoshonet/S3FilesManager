require "test_helper"

class FileListControllerTest < ActionController::TestCase


  setup do

  end

  test "should get index" do
    get :index
   assert_redirected_to :controller => "authentications", :action => "new"
  end

  test "should get upload" do
    get :upload
    assert_redirected_to :controller => "authentications", :action => "new"
  end


end