require "application_system_test_case"

class RescatesTest < ApplicationSystemTestCase
  setup do
    @rescate = rescates(:one)
  end

  test "visiting the index" do
    visit rescates_url
    assert_selector "h1", text: "Rescates"
  end

  test "creating a Rescate" do
    visit rescates_url
    click_on "New Rescate"

    fill_in "Adults", with: @rescate.adults
    fill_in "Childs", with: @rescate.childs
    fill_in "Firstname", with: @rescate.firstname
    fill_in "Lastname", with: @rescate.lastname
    fill_in "Latitude", with: @rescate.latitude
    fill_in "Longitude", with: @rescate.longitude
    fill_in "Note", with: @rescate.note
    fill_in "Phone", with: @rescate.phone
    fill_in "Status", with: @rescate.status
    click_on "Create Rescate"

    assert_text "Rescate was successfully created"
    click_on "Back"
  end

  test "updating a Rescate" do
    visit rescates_url
    click_on "Edit", match: :first

    fill_in "Adults", with: @rescate.adults
    fill_in "Childs", with: @rescate.childs
    fill_in "Firstname", with: @rescate.firstname
    fill_in "Lastname", with: @rescate.lastname
    fill_in "Latitude", with: @rescate.latitude
    fill_in "Longitude", with: @rescate.longitude
    fill_in "Note", with: @rescate.note
    fill_in "Phone", with: @rescate.phone
    fill_in "Status", with: @rescate.status
    click_on "Update Rescate"

    assert_text "Rescate was successfully updated"
    click_on "Back"
  end

  test "destroying a Rescate" do
    visit rescates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rescate was successfully destroyed"
  end
end
