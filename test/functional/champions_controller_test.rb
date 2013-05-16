require 'test_helper'

class ChampionsControllerTest < ActionController::TestCase
  setup do
    @champion = champions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:champions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create champion" do
    assert_difference('Champion.count') do
      post :create, champion: { name: @champion.name, power1_game_text: @champion.power1_game_text, power1_name: @champion.power1_name, power1_type: @champion.power1_type, power1_unlock: @champion.power1_unlock, power2_game_text: @champion.power2_game_text, power2_name: @champion.power2_name, power2_type: @champion.power2_type, power2_unlock: @champion.power2_unlock, power3_game_text: @champion.power3_game_text, power3_name: @champion.power3_name, power3_type: @champion.power3_type, power3_unlock: @champion.power3_unlock, power4_game_text: @champion.power4_game_text, power4_name: @champion.power4_name, power4_type: @champion.power4_type, power4_unlock: @champion.power4_unlock }
    end

    assert_redirected_to champion_path(assigns(:champion))
  end

  test "should show champion" do
    get :show, id: @champion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @champion
    assert_response :success
  end

  test "should update champion" do
    put :update, id: @champion, champion: { name: @champion.name, power1_game_text: @champion.power1_game_text, power1_name: @champion.power1_name, power1_type: @champion.power1_type, power1_unlock: @champion.power1_unlock, power2_game_text: @champion.power2_game_text, power2_name: @champion.power2_name, power2_type: @champion.power2_type, power2_unlock: @champion.power2_unlock, power3_game_text: @champion.power3_game_text, power3_name: @champion.power3_name, power3_type: @champion.power3_type, power3_unlock: @champion.power3_unlock, power4_game_text: @champion.power4_game_text, power4_name: @champion.power4_name, power4_type: @champion.power4_type, power4_unlock: @champion.power4_unlock }
    assert_redirected_to champion_path(assigns(:champion))
  end

  test "should destroy champion" do
    assert_difference('Champion.count', -1) do
      delete :destroy, id: @champion
    end

    assert_redirected_to champions_path
  end
end
