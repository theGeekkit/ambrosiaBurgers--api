require "test_helper"

class CustardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custard = custards(:one)
  end

  test "should get index" do
    get custards_url, as: :json
    assert_response :success
  end

  test "should create custard" do
    assert_difference("Custard.count") do
      post custards_url, params: { custard: { name: @custard.name, order_id: @custard.order_id } }, as: :json
    end

    assert_response :created
  end

  test "should show custard" do
    get custard_url(@custard), as: :json
    assert_response :success
  end

  test "should update custard" do
    patch custard_url(@custard), params: { custard: { name: @custard.name, order_id: @custard.order_id } }, as: :json
    assert_response :success
  end

  test "should destroy custard" do
    assert_difference("Custard.count", -1) do
      delete custard_url(@custard), as: :json
    end

    assert_response :no_content
  end
end
