require 'test_helper'

class TeatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teat = teats(:one)
  end

  test "should get index" do
    get teats_url
    assert_response :success
  end

  test "should get new" do
    get new_teat_url
    assert_response :success
  end

  test "should create teat" do
    assert_difference('Teat.count') do
      post teats_url, params: { teat: { teat: @teat.teat } }
    end

    assert_redirected_to teat_url(Teat.last)
  end

  test "should show teat" do
    get teat_url(@teat)
    assert_response :success
  end

  test "should get edit" do
    get edit_teat_url(@teat)
    assert_response :success
  end

  test "should update teat" do
    patch teat_url(@teat), params: { teat: { teat: @teat.teat } }
    assert_redirected_to teat_url(@teat)
  end

  test "should destroy teat" do
    assert_difference('Teat.count', -1) do
      delete teat_url(@teat)
    end

    assert_redirected_to teats_url
  end
end
