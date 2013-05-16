require 'test_helper'

class TroopClassesControllerTest < ActionController::TestCase
  setup do
    @troop_class = troop_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:troop_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create troop_class" do
    assert_difference('TroopClass.count') do
      post :create, troop_class: { class_name: @troop_class.class_name }
    end

    assert_redirected_to troop_class_path(assigns(:troop_class))
  end

  test "should show troop_class" do
    get :show, id: @troop_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @troop_class
    assert_response :success
  end

  test "should update troop_class" do
    put :update, id: @troop_class, troop_class: { class_name: @troop_class.class_name }
    assert_redirected_to troop_class_path(assigns(:troop_class))
  end

  test "should destroy troop_class" do
    assert_difference('TroopClass.count', -1) do
      delete :destroy, id: @troop_class
    end

    assert_redirected_to troop_classes_path
  end
end
