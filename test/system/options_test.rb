require "application_system_test_case"

class OptionsTest < ApplicationSystemTestCase
  setup do
    @option = options(:one)
  end

  test "visiting the index" do
    visit options_url
    assert_selector "h1", text: "Options"
  end

  test "should create option" do
    visit options_url
    click_on "New option"

    fill_in "Description", with: @option.description
    fill_in "Price", with: @option.price
    fill_in "Quantity", with: @option.quantity
    fill_in "Title", with: @option.title
    click_on "Create Option"

    assert_text "Option was successfully created"
    click_on "Back"
  end

  test "should update Option" do
    visit option_url(@option)
    click_on "Edit this option", match: :first

    fill_in "Description", with: @option.description
    fill_in "Price", with: @option.price
    fill_in "Quantity", with: @option.quantity
    fill_in "Title", with: @option.title
    click_on "Update Option"

    assert_text "Option was successfully updated"
    click_on "Back"
  end

  test "should destroy Option" do
    visit option_url(@option)
    click_on "Destroy this option", match: :first

    assert_text "Option was successfully destroyed"
  end
end
