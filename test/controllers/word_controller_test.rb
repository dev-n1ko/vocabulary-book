require "test_helper"

class WordControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get word_index_url
    assert_response :success
  end
end
