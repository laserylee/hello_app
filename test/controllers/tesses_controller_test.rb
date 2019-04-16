require 'test_helper'

class TessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tess = tesses(:one)
  end

  test "should get index" do
    get tesses_url
    assert_response :success
  end

  test "should get new" do
    get new_tess_url
    assert_response :success
  end

  test "should create tess" do
    assert_difference('Tess.count') do
      post tesses_url, params: { tess: { id: @tess.id, value: @tess.value } }
    end

    assert_redirected_to tess_url(Tess.last)
  end

  test "should show tess" do
    get tess_url(@tess)
    assert_response :success
  end

  test "should get edit" do
    get edit_tess_url(@tess)
    assert_response :success
  end

  test "should update tess" do
    patch tess_url(@tess), params: { tess: { id: @tess.id, value: @tess.value } }
    assert_redirected_to tess_url(@tess)
  end

  test "should destroy tess" do
    assert_difference('Tess.count', -1) do
      delete tess_url(@tess)
    end

    assert_redirected_to tesses_url
  end
end
