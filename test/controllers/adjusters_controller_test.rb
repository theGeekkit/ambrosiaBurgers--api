require "test_helper"

class AdjustersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adjuster = adjusters(:one)
  end

  test "should get index" do
    get adjusters_url, as: :json
    assert_response :success
  end

  test "should create adjuster" do
    assert_difference("Adjuster.count") do
      post adjusters_url, params: { adjuster: { _id: @adjuster._id, item: @adjuster.item, name: @adjuster.name } }, as: :json
    end

    assert_response :created
  end

  test "should show adjuster" do
    get adjuster_url(@adjuster), as: :json
    assert_response :success
  end

  test "should update adjuster" do
    patch adjuster_url(@adjuster), params: { adjuster: { _id: @adjuster._id, item: @adjuster.item, name: @adjuster.name } }, as: :json
    assert_response :success
  end

  test "should destroy adjuster" do
    assert_difference("Adjuster.count", -1) do
      delete adjuster_url(@adjuster), as: :json
    end

    assert_response :no_content
  end
end
