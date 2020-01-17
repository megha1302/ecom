require "application_system_test_case"

class OrdrsTest < ApplicationSystemTestCase
  setup do
    @ordr = ordrs(:one)
  end

  test "visiting the index" do
    visit ordrs_url
    assert_selector "h1", text: "Ordrs"
  end

  test "creating a Ordr" do
    visit ordrs_url
    click_on "New Ordr"

    fill_in "Address", with: @ordr.address_id
    fill_in "Orderdate", with: @ordr.orderdate
    fill_in "Orderno", with: @ordr.orderno
    fill_in "Paytype", with: @ordr.paytype
    fill_in "Total", with: @ordr.total
    fill_in "Trackno", with: @ordr.trackno
    fill_in "User", with: @ordr.user_id
    click_on "Create Ordr"

    assert_text "Ordr was successfully created"
    click_on "Back"
  end

  test "updating a Ordr" do
    visit ordrs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @ordr.address_id
    fill_in "Orderdate", with: @ordr.orderdate
    fill_in "Orderno", with: @ordr.orderno
    fill_in "Paytype", with: @ordr.paytype
    fill_in "Total", with: @ordr.total
    fill_in "Trackno", with: @ordr.trackno
    fill_in "User", with: @ordr.user_id
    click_on "Update Ordr"

    assert_text "Ordr was successfully updated"
    click_on "Back"
  end

  test "destroying a Ordr" do
    visit ordrs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ordr was successfully destroyed"
  end
end
