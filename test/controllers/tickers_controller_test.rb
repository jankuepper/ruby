require "test_helper"

class TickersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticker = tickers(:one)
  end

  test "should get index" do
    get tickers_url, as: :json
    assert_response :success
  end

  test "should create ticker" do
    assert_difference('Ticker.count') do
      post tickers_url, params: { ticker: { description: @ticker.description, endDate: @ticker.endDate, name: @ticker.name, startDate: @ticker.startDate, ticker_name: @ticker.ticker_name } }, as: :json
    end

    assert_response 201
  end

  test "should show ticker" do
    get ticker_url(@ticker), as: :json
    assert_response :success
  end

  test "should update ticker" do
    patch ticker_url(@ticker), params: { ticker: { description: @ticker.description, endDate: @ticker.endDate, name: @ticker.name, startDate: @ticker.startDate, ticker_name: @ticker.ticker_name } }, as: :json
    assert_response 200
  end

  test "should destroy ticker" do
    assert_difference('Ticker.count', -1) do
      delete ticker_url(@ticker), as: :json
    end

    assert_response 204
  end
end
