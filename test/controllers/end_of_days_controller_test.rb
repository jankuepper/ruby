require "test_helper"

class EndOfDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @end_of_day = end_of_days(:one)
  end

  test "should get index" do
    get end_of_days_url, as: :json
    assert_response :success
  end

  test "should create end_of_day" do
    assert_difference('EndOfDay.count') do
      post end_of_days_url, params: { end_of_day: { close: @end_of_day.close, date: @end_of_day.date, dividend: @end_of_day.dividend, high: @end_of_day.high, low: @end_of_day.low, open: @end_of_day.open, split: @end_of_day.split, ticker_id: @end_of_day.ticker_id, volume: @end_of_day.volume } }, as: :json
    end

    assert_response 201
  end

  test "should show end_of_day" do
    get end_of_day_url(@end_of_day), as: :json
    assert_response :success
  end

  test "should update end_of_day" do
    patch end_of_day_url(@end_of_day), params: { end_of_day: { close: @end_of_day.close, date: @end_of_day.date, dividend: @end_of_day.dividend, high: @end_of_day.high, low: @end_of_day.low, open: @end_of_day.open, split: @end_of_day.split, ticker_id: @end_of_day.ticker_id, volume: @end_of_day.volume } }, as: :json
    assert_response 200
  end

  test "should destroy end_of_day" do
    assert_difference('EndOfDay.count', -1) do
      delete end_of_day_url(@end_of_day), as: :json
    end

    assert_response 204
  end
end
