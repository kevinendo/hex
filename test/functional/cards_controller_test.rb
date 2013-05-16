require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { attack: @card.attack, class_id: @card.class_id, color: @card.color, cost: @card.cost, defense: @card.defense, faction: @card.faction, game_text: @card.game_text, lore_text: @card.lore_text, name: @card.name, number: @card.number, pve: @card.pve, race_id: @card.race_id, rarity_id: @card.rarity_id, restriction: @card.restriction, set_id: @card.set_id, threshold: @card.threshold, type_id: @card.type_id }
    end

    assert_redirected_to card_path(assigns(:card))
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card
    assert_response :success
  end

  test "should update card" do
    put :update, id: @card, card: { attack: @card.attack, class_id: @card.class_id, color: @card.color, cost: @card.cost, defense: @card.defense, faction: @card.faction, game_text: @card.game_text, lore_text: @card.lore_text, name: @card.name, number: @card.number, pve: @card.pve, race_id: @card.race_id, rarity_id: @card.rarity_id, restriction: @card.restriction, set_id: @card.set_id, threshold: @card.threshold, type_id: @card.type_id }
    assert_redirected_to card_path(assigns(:card))
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_redirected_to cards_path
  end
end
