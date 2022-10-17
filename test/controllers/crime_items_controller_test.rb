require 'test_helper'

class CrimeItemsControllerTest < ActionController::TestCase
  setup do
    @crime_list = crime_lists(:one)
    @crime_item = crime_items(:one)
  end

  test "should get index" do
    get :index, params: { crime_list_id: @crime_list }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { crime_list_id: @crime_list }
    assert_response :success
  end

  test "should create crime_item" do
    assert_difference('CrimeItem.count') do
      post :create, params: { crime_list_id: @crime_list, crime_item: @crime_item.attributes }
    end

    assert_redirected_to crime_list_crime_item_path(@crime_list, CrimeItem.last)
  end

  test "should show crime_item" do
    get :show, params: { crime_list_id: @crime_list, id: @crime_item }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { crime_list_id: @crime_list, id: @crime_item }
    assert_response :success
  end

  test "should update crime_item" do
    put :update, params: { crime_list_id: @crime_list, id: @crime_item, crime_item: @crime_item.attributes }
    assert_redirected_to crime_list_crime_item_path(@crime_list, CrimeItem.last)
  end

  test "should destroy crime_item" do
    assert_difference('CrimeItem.count', -1) do
      delete :destroy, params: { crime_list_id: @crime_list, id: @crime_item }
    end

    assert_redirected_to crime_list_crime_items_path(@crime_list)
  end
end
