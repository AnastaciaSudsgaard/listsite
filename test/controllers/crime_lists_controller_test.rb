require "test_helper"

class CrimeListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crime_list = crime_lists(:one)
  end

  test "should get index" do
    get crime_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_crime_list_url
    assert_response :success
  end

  test "should create crime_list" do
    assert_difference('CrimeList.count') do
      post crime_lists_url, params: { crime_list: { title: @crime_list.title } }
    end

    assert_redirected_to crime_list_url(CrimeList.last)
  end

  test "should show crime_list" do
    get crime_list_url(@crime_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_crime_list_url(@crime_list)
    assert_response :success
  end

  test "should update crime_list" do
    patch crime_list_url(@crime_list), params: { crime_list: { title: @crime_list.title } }
    assert_redirected_to crime_list_url(@crime_list)
  end

  test "should destroy crime_list" do
    assert_difference('CrimeList.count', -1) do
      delete crime_list_url(@crime_list)
    end

    assert_redirected_to crime_lists_url
  end
end
