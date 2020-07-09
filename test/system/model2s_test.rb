require "application_system_test_case"

class Model2sTest < ApplicationSystemTestCase
  setup do
    @model2 = model2s(:one)
  end

  test "visiting the index" do
    visit model2s_url
    assert_selector "h1", text: "Model2s"
  end

  test "creating a Model2" do
    visit model2s_url
    click_on "New Model2"

    fill_in "Title", with: @model2.title
    click_on "Create Model2"

    assert_text "Model2 was successfully created"
    click_on "Back"
  end

  test "updating a Model2" do
    visit model2s_url
    click_on "Edit", match: :first

    fill_in "Title", with: @model2.title
    click_on "Update Model2"

    assert_text "Model2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Model2" do
    visit model2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Model2 was successfully destroyed"
  end
end
