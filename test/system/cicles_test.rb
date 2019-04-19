require "application_system_test_case"

class CiclesTest < ApplicationSystemTestCase
  setup do
    @cicle = cicles(:one)
  end

  test "visiting the index" do
    visit cicles_url
    assert_selector "h1", text: "Cicles"
  end

  test "creating a Cicle" do
    visit cicles_url
    click_on "New Cicle"

    fill_in "Name", with: @cicle.name
    click_on "Create Cicle"

    assert_text "Cicle was successfully created"
    click_on "Back"
  end

  test "updating a Cicle" do
    visit cicles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cicle.name
    click_on "Update Cicle"

    assert_text "Cicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Cicle" do
    visit cicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cicle was successfully destroyed"
  end
end
