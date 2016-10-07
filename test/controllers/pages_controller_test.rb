require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "logged in should get secret" do
    sign_in users(:client)
    get :secret
    assert_response :success
  end

  test "not authenticated should get redirect" do
    get :secret
    assert_response :redirect
  end
end
