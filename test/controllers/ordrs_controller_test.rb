require 'test_helper'

class OrdrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordr = ordrs(:one)
  end

  test "should get index" do
    get ordrs_url
    assert_response :success
  end

  test "should get new" do
    get new_ordr_url
    assert_response :success
  end

  test "should create ordr" do
    assert_difference('Ordr.count') do
      post ordrs_url, params: { ordr: { address_id: @ordr.address_id, orderdate: @ordr.orderdate, orderno: @ordr.orderno, paytype: @ordr.paytype, total: @ordr.total, trackno: @ordr.trackno, user_id: @ordr.user_id } }
    end

    assert_redirected_to ordr_url(Ordr.last)
  end

  test "should show ordr" do
    get ordr_url(@ordr)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordr_url(@ordr)
    assert_response :success
  end

  test "should update ordr" do
    patch ordr_url(@ordr), params: { ordr: { address_id: @ordr.address_id, orderdate: @ordr.orderdate, orderno: @ordr.orderno, paytype: @ordr.paytype, total: @ordr.total, trackno: @ordr.trackno, user_id: @ordr.user_id } }
    assert_redirected_to ordr_url(@ordr)
  end

  test "should destroy ordr" do
    assert_difference('Ordr.count', -1) do
      delete ordr_url(@ordr)
    end

    assert_redirected_to ordrs_url
  end
end
