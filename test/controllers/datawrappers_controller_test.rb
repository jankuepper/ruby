require "test_helper"

class DatawrappersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datawrapper = datawrappers(:one)
  end

  test "should get index" do
    get datawrappers_url, as: :json
    assert_response :success
  end

  test "should create datawrapper" do
    assert_difference('Datawrapper.count') do
      post datawrappers_url, params: { datawrapper: { dataCode: @datawrapper.dataCode, value: @datawrapper.value } }, as: :json
    end

    assert_response 201
  end

  test "should show datawrapper" do
    get datawrapper_url(@datawrapper), as: :json
    assert_response :success
  end

  test "should update datawrapper" do
    patch datawrapper_url(@datawrapper), params: { datawrapper: { dataCode: @datawrapper.dataCode, value: @datawrapper.value } }, as: :json
    assert_response 200
  end

  test "should destroy datawrapper" do
    assert_difference('Datawrapper.count', -1) do
      delete datawrapper_url(@datawrapper), as: :json
    end

    assert_response 204
  end
end
