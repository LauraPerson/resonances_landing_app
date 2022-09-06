require "test_helper"

class ConceptsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get concepts_new_url
    assert_response :success
  end

  test "should get edit" do
    get concepts_edit_url
    assert_response :success
  end
end
