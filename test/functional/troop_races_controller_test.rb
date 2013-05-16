require 'test_helper'

class TroopRacesControllerTest < ActionController::TestCase
  setup do
    @troop_race = troop_races(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:troop_races)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create troop_race" do
    assert_difference('TroopRace.count') do
      post :create, troop_race: { race_name: @troop_race.race_name }
    end

    assert_redirected_to troop_race_path(assigns(:troop_race))
  end

  test "should show troop_race" do
    get :show, id: @troop_race
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @troop_race
    assert_response :success
  end

  test "should update troop_race" do
    put :update, id: @troop_race, troop_race: { race_name: @troop_race.race_name }
    assert_redirected_to troop_race_path(assigns(:troop_race))
  end

  test "should destroy troop_race" do
    assert_difference('TroopRace.count', -1) do
      delete :destroy, id: @troop_race
    end

    assert_redirected_to troop_races_path
  end
end
