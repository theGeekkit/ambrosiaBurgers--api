require "test_helper"

class CustardAdjustersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custard_adjuster = custard_adjusters(:one)
  end

  test "should get index" do
    get custard_adjusters_url, as: :json
    assert_response :success
  end

  test "should create custard_adjuster" do
    assert_difference("CustardAdjuster.count") do
      post custard_adjusters_url, params: { custard_adjuster: { custard_id: @custard_adjuster.custard_id, name: @custard_adjuster.name } }, as: :json
    end

    assert_response :created
  end

  test "should show custard_adjuster" do
    get custard_adjuster_url(@custard_adjuster), as: :json
    assert_response :success
  end

  test "should update custard_adjuster" do
    patch custard_adjuster_url(@custard_adjuster), params: { custard_adjuster: { custard_id: @custard_adjuster.custard_id, name: @custard_adjuster.name } }, as: :json
    assert_response :success
  end

  test "should destroy custard_adjuster" do
    assert_difference("CustardAdjuster.count", -1) do
      delete custard_adjuster_url(@custard_adjuster), as: :json
    end

    assert_response :no_content
  end
end
