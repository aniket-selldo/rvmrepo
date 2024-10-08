require "application_system_test_case"

class AnniketsTest < ApplicationSystemTestCase
  setup do
    @anniket = annikets(:one)
  end

  test "visiting the index" do
    visit annikets_url
    assert_selector "h1", text: "Annikets"
  end

  test "should create anniket" do
    visit annikets_url
    click_on "New anniket"

    fill_in "Description", with: @anniket.description
    fill_in "Title", with: @anniket.title
    click_on "Create Anniket"

    assert_text "Anniket was successfully created"
    click_on "Back"
  end

  test "should update Anniket" do
    visit anniket_url(@anniket)
    click_on "Edit this anniket", match: :first

    fill_in "Description", with: @anniket.description
    fill_in "Title", with: @anniket.title
    click_on "Update Anniket"

    assert_text "Anniket was successfully updated"
    click_on "Back"
  end

  test "should destroy Anniket" do
    visit anniket_url(@anniket)
    click_on "Destroy this anniket", match: :first

    assert_text "Anniket was successfully destroyed"
  end
end
