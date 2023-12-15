require "application_system_test_case"

class MainusersTest < ApplicationSystemTestCase
  setup do
    @mainuser = mainusers(:one)
  end

  test "visiting the index" do
    visit mainusers_url
    assert_selector "h1", text: "Mainusers"
  end

  test "should create mainuser" do
    visit mainusers_url
    click_on "New mainuser"

    fill_in "Email", with: @mainuser.email
    fill_in "Mainuser type", with: @mainuser.mainuser_type
    fill_in "Name", with: @mainuser.name
    fill_in "Password", with: @mainuser.password
    click_on "Create Mainuser"

    assert_text "Mainuser was successfully created"
    click_on "Back"
  end

  test "should update Mainuser" do
    visit mainuser_url(@mainuser)
    click_on "Edit this mainuser", match: :first

    fill_in "Email", with: @mainuser.email
    fill_in "Mainuser type", with: @mainuser.mainuser_type
    fill_in "Name", with: @mainuser.name
    fill_in "Password", with: @mainuser.password
    click_on "Update Mainuser"

    assert_text "Mainuser was successfully updated"
    click_on "Back"
  end

  test "should destroy Mainuser" do
    visit mainuser_url(@mainuser)
    click_on "Destroy this mainuser", match: :first

    assert_text "Mainuser was successfully destroyed"
  end
end
