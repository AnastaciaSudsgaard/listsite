require "application_system_test_case"

class CrimeListsTest < ApplicationSystemTestCase
  setup do
    @crime_list = crime_lists(:one)
  end

  test "visiting the index" do
    visit crime_lists_url
    assert_selector "h1", text: "Crime Lists"
  end

  test "creating a Crime list" do
    visit crime_lists_url
    click_on "New Crime List"

    fill_in "Title", with: @crime_list.title
    click_on "Create Crime list"

    assert_text "Crime list was successfully created"
    click_on "Back"
  end

  test "updating a Crime list" do
    visit crime_lists_url
    click_on "Edit", match: :first

    fill_in "Title", with: @crime_list.title
    click_on "Update Crime list"

    assert_text "Crime list was successfully updated"
    click_on "Back"
  end

  test "destroying a Crime list" do
    visit crime_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crime list was successfully destroyed"
  end
end
