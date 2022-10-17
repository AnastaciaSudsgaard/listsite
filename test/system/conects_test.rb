require "application_system_test_case"

class ConectsTest < ApplicationSystemTestCase
  setup do
    @conect = conects(:one)
  end

  test "visiting the index" do
    visit conects_url
    assert_selector "h1", text: "Conects"
  end

  test "creating a Conect" do
    visit conects_url
    click_on "New Conect"

    fill_in "Name", with: @conect.name
    click_on "Create Conect"

    assert_text "Conect was successfully created"
    click_on "Back"
  end

  test "updating a Conect" do
    visit conects_url
    click_on "Edit", match: :first

    fill_in "Name", with: @conect.name
    click_on "Update Conect"

    assert_text "Conect was successfully updated"
    click_on "Back"
  end

  test "destroying a Conect" do
    visit conects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conect was successfully destroyed"
  end
end
