require "test_helper"

class RidersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def test_index
    get riders_url 
    assert_response :success
    assert_equal Rider.count,json_response.length
  end
  def test_show
    rider= riders(:one)
    get rider_url(rider)
    assert_response :success
    assert_equal rider.id,json_response["id"]
  end 

  def test_show_not_found 
    get rider_url(id: -1)
    assert_response :not_found
  end

  private 
  def json_response
    JSON.parse(@response.body)
  end 
  
end
