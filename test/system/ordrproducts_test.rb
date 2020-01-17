require "application_system_test_case"

class OrdrproductsTest < ApplicationSystemTestCase
  setup do
    @ordrproduct = ordrproducts(:one)
  end

  test "visiting the index" do
    visit ordrproducts_url
    assert_selector "h1", text: "Ordrproducts"
  end

  test "creating a Ordrproduct" do
    visit ordrproducts_url
    click_on "New Ordrproduct"

    fill_in "Ordr", with: @ordrproduct.ordr_id
    fill_in "Product", with: @ordrproduct.product_id
    fill_in "Quantity", with: @ordrproduct.quantity
    click_on "Create Ordrproduct"

    assert_text "Ordrproduct was successfully created"
    click_on "Back"
  end

  test "updating a Ordrproduct" do
    visit ordrproducts_url
    click_on "Edit", match: :first

    fill_in "Ordr", with: @ordrproduct.ordr_id
    fill_in "Product", with: @ordrproduct.product_id
    fill_in "Quantity", with: @ordrproduct.quantity
    click_on "Update Ordrproduct"

    assert_text "Ordrproduct was successfully updated"
    click_on "Back"
  end

  test "destroying a Ordrproduct" do
    visit ordrproducts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ordrproduct was successfully destroyed"
  end
end
