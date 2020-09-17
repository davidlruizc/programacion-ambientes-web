require 'test_helper'

class BienvenidosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bienvenidos_index_url
    assert_response :success
  end

end
