require "test_helper"

class RacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @race = races(:one)
  end

  test "should get index" do
    get races_url, as: :json
    assert_response :success
  end

  test "should create race" do
    assert_difference('Race.count') do
      post races_url, params: { race: { firstPlace: @race.firstPlace, name: @race.name, secondPlace: @race.secondPlace, thirdPlace: @race.thirdPlace, track: @race.track } }, as: :json
    end

    assert_response 201
  end

  test "should show race" do
    get race_url(@race), as: :json
    assert_response :success
  end

  test "should update race" do
    patch race_url(@race), params: { race: { firstPlace: @race.firstPlace, name: @race.name, secondPlace: @race.secondPlace, thirdPlace: @race.thirdPlace, track: @race.track } }, as: :json
    assert_response 200
  end

  test "should destroy race" do
    assert_difference('Race.count', -1) do
      delete race_url(@race), as: :json
    end

    assert_response 204
  end
end
