require 'test_helper'

class PizzasControllerTest < ActionController::TestCase
  setup do
    @pizza = pizzas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizzas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizza" do
    assert_difference('Pizza.count') do
      post :create, pizza: { ingredients: @pizza.ingredients, name: @pizza.name }
    end

    assert_redirected_to pizza_path(assigns(:pizza))
  end

  test "should show pizza" do
    get :show, id: @pizza
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pizza
    assert_response :success
  end

  test "should update pizza" do
    patch :update, id: @pizza, pizza: { ingredients: @pizza.ingredients, name: @pizza.name }
    assert_redirected_to pizza_path(assigns(:pizza))
  end

  test "should destroy pizza" do
    assert_difference('Pizza.count', -1) do
      delete :destroy, id: @pizza
    end

    assert_redirected_to pizzas_path
  end
end
