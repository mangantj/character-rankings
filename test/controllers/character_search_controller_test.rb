require "test_helper"

class CharacterSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get character_search_index_url
    assert_response :success
  end
end
