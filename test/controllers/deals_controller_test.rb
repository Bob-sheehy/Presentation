require 'test_helper'

class DealsControllerTest < ActionController::TestCase
  setup do
    @deal = deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deal" do
    assert_difference('Deal.count') do
      post :create, deal: { address: @deal.address, category: @deal.category, description: @deal.description, image_url: @deal.image_url, latitude: @deal.latitude, longitude: @deal.longitude, name: @deal.name, price: @deal.price, status: @deal.status, terms: @deal.terms, value: @deal.value }
    end

    assert_redirected_to deal_path(assigns(:deal))
  end

  test "should show deal" do
    get :show, id: @deal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deal
    assert_response :success
  end

  test "should update deal" do
    patch :update, id: @deal, deal: { address: @deal.address, category: @deal.category, description: @deal.description, image_url: @deal.image_url, latitude: @deal.latitude, longitude: @deal.longitude, name: @deal.name, price: @deal.price, status: @deal.status, terms: @deal.terms, value: @deal.value }
    assert_redirected_to deal_path(assigns(:deal))
  end

  test "should destroy deal" do
    assert_difference('Deal.count', -1) do
      delete :destroy, id: @deal
    end

    assert_redirected_to deals_path
  end
end
