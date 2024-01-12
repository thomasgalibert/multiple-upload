require "application_system_test_case"

class DossiersTest < ApplicationSystemTestCase
  setup do
    @dossier = dossiers(:one)
  end

  test "visiting the index" do
    visit dossiers_url
    assert_selector "h1", text: "Dossiers"
  end

  test "should create dossier" do
    visit dossiers_url
    click_on "New dossier"

    fill_in "Name", with: @dossier.name
    click_on "Create Dossier"

    assert_text "Dossier was successfully created"
    click_on "Back"
  end

  test "should update Dossier" do
    visit dossier_url(@dossier)
    click_on "Edit this dossier", match: :first

    fill_in "Name", with: @dossier.name
    click_on "Update Dossier"

    assert_text "Dossier was successfully updated"
    click_on "Back"
  end

  test "should destroy Dossier" do
    visit dossier_url(@dossier)
    click_on "Destroy this dossier", match: :first

    assert_text "Dossier was successfully destroyed"
  end
end
