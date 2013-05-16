require 'test_helper'

class SocketGemsControllerTest < ActionController::TestCase
  setup do
    @socket_gem = socket_gems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socket_gems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socket_gem" do
    assert_difference('SocketGem.count') do
      post :create, socket_gem: { color: @socket_gem.color, game_text: @socket_gem.game_text, name: @socket_gem.name, type: @socket_gem.type }
    end

    assert_redirected_to socket_gem_path(assigns(:socket_gem))
  end

  test "should show socket_gem" do
    get :show, id: @socket_gem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socket_gem
    assert_response :success
  end

  test "should update socket_gem" do
    put :update, id: @socket_gem, socket_gem: { color: @socket_gem.color, game_text: @socket_gem.game_text, name: @socket_gem.name, type: @socket_gem.type }
    assert_redirected_to socket_gem_path(assigns(:socket_gem))
  end

  test "should destroy socket_gem" do
    assert_difference('SocketGem.count', -1) do
      delete :destroy, id: @socket_gem
    end

    assert_redirected_to socket_gems_path
  end
end
