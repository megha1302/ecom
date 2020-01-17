require 'test_helper'

class OrdrproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordrproduct = ordrproducts(:one)
  end

  test "should get index" do
    get ordrproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_ordrproduct_url
    assert_response :success
  end

  test "should create ordrproduct" do
    assert_difference('Ordrproduct.count') do
      post ordrproducts_url, params: { ordrproduct: { ordr_id: @ordrproduct.ordr_id, product_id: @ordrproduct.product_id, quantity: @ordrproduct.quantity } }
    end

    assert_redirected_to ordrproduct_url(Ordrproduct.last)
  end

  test "should show ordrproduct" do
    get ordrproduct_url(@ordrproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordrproduct_url(@ordrproduct)
    assert_response :success
  end

  test "should update ordrproduct" do
    patch ordrproduct_url(@ordrproduct), params: { ordrproduct: { ordr_id: @ordrproduct.ordr_id, product_id: @ordrproduct.product_id, quantity: @ordrproduct.quantity } }
    assert_redirected_to ordrproduct_url(@ordrproduct)
  end

  test "should destroy ordrproduct" do
    assert_difference('Ordrproduct.count', -1) do
      delete ordrproduct_url(@ordrproduct)
    end

    assert_redirected_to ordrproducts_url
  end
end
