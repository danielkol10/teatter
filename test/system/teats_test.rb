require "application_system_test_case"

class TeatsTest < ApplicationSystemTestCase
  setup do
    @teat = teats(:one)
  end

  test "visiting the index" do
    visit teats_url
    assert_selector "h1", text: "Teats"
  end

  test "creating a Teat" do
    visit teats_url
    click_on "New Teat"

    fill_in "Teat", with: @teat.teat
    click_on "Create Teat"

    assert_text "Teat was successfully created"
    click_on "Back"
  end

  test "updating a Teat" do
    visit teats_url
    click_on "Edit", match: :first

    fill_in "Teat", with: @teat.teat
    click_on "Update Teat"

    assert_text "Teat was successfully updated"
    click_on "Back"
  end

  test "destroying a Teat" do
    visit teats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teat was successfully destroyed"
  end
end
