require 'test_helper'

class EstadisticaControllerTest < ActionDispatch::IntegrationTest
  test "should get charts" do
    get estadistica_charts_url
    assert_response :success
  end

end
