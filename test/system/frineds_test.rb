require "application_system_test_case"

class FrinedsTest < ApplicationSystemTestCase
  setup do
    @frined = frineds(:one)
  end

  test "visiting the index" do
    visit frineds_url
    assert_selector "h1", text: "Frineds"
  end

  test "should create frined" do
    visit frineds_url
    click_on "New frined"

    fill_in "Email", with: @frined.email
    fill_in "First name", with: @frined.first_name
    fill_in "Last name", with: @frined.last_name
    fill_in "Phone", with: @frined.phone
    fill_in "Twitter", with: @frined.twitter
    click_on "Create Frined"

    assert_text "Frined was successfully created"
    click_on "Back"
  end

  test "should update Frined" do
    visit frined_url(@frined)
    click_on "Edit this frined", match: :first

    fill_in "Email", with: @frined.email
    fill_in "First name", with: @frined.first_name
    fill_in "Last name", with: @frined.last_name
    fill_in "Phone", with: @frined.phone
    fill_in "Twitter", with: @frined.twitter
    click_on "Update Frined"

    assert_text "Frined was successfully updated"
    click_on "Back"
  end

  test "should destroy Frined" do
    visit frined_url(@frined)
    click_on "Destroy this frined", match: :first

    assert_text "Frined was successfully destroyed"
  end
end
