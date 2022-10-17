require "test_helper"

class ConectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conect = conects(:one)
  end

  test "should get index" do
    get conects_url
    assert_response :success
  end

  test "should get new" do
    get new_conect_url
    assert_response :success
  end

  test "should create conect" do
    assert_difference('Conect.count') do
      post conects_url, params: { conect: { name: @conect.name } }
    end

    assert_redirected_to conect_url(Conect.last)
  end

  test "should show conect" do
    get conect_url(@conect)
    assert_response :success
  end

  test "should get edit" do
    get edit_conect_url(@conect)
    assert_response :success
  end

  test "should update conect" do
    patch conect_url(@conect), params: { conect: { name: @conect.name } }
    assert_redirected_to conect_url(@conect)
  end

  test "should destroy conect" do
    assert_difference('Conect.count', -1) do
      delete conect_url(@conect)
    end

    assert_redirected_to conects_url
  end
end
