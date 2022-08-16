require "test_helper"

class TermsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get terms_edit_url
    assert_response :success
  end
end
