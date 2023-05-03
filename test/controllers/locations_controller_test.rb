require "test_helper"

class LocationsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def test_index    
      get locations_url
      assert_response :success
      assert_equal Location.count,json_response.length
  end

def test_show
  location=locations(:one)
  get location_url(location)
  assert_response :success
  assert_equal location.id,json_response["id"]
end

def test_includes_rider
  location = locations(:one)
  rider = location.rider

  get location_url(location)
  assert_response :success

  assert_equal rider.first_name, json_response["rider"]["first_name"]
  assert_equal rider.last_name, json_response["rider"]["last_name"]
end


def test_show_not_found 
  get location_url(id: -1)
  assert_response :not_found
end 

  private 
  def json_response 
    JSON.parse(@response.body)
  end

end
