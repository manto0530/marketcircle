require "application_system_test_case"

class MastersTest < ApplicationSystemTestCase
  setup do
    @master = masters(:one)
  end

  test "visiting the index" do
    visit masters_url
    assert_selector "h1", text: "Masters"
  end

  test "creating a Master" do
    visit masters_url
    click_on "New Master"

    fill_in "Email", with: @master.email
    fill_in "Name", with: @master.name
    click_on "Create Master"

    assert_text "Master was successfully created"
    click_on "Back"
  end

  test "updating a Master" do
    visit masters_url
    click_on "Edit", match: :first

    fill_in "Email", with: @master.email
    fill_in "Name", with: @master.name
    click_on "Update Master"

    assert_text "Master was successfully updated"
    click_on "Back"
  end

  test "destroying a Master" do
    visit masters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Master was successfully destroyed"
  end
end
