require "application_system_test_case"

class Model1sTest < ApplicationSystemTestCase
  setup do
    @model1 = model1s(:one)
  end

  test "visiting the index" do
    visit model1s_url
    assert_selector "h1", text: "Model1s"
  end

  test "creating a Model1" do
    visit model1s_url
    click_on "New Model1"

    fill_in "Title", with: @model1.title
    click_on "Create Model1"

    assert_text "Model1 was successfully created"
    click_on "Back"
  end

  test "updating a Model1" do
    visit model1s_url
    click_on "Edit", match: :first

    fill_in "Title", with: @model1.title
    click_on "Update Model1"

    assert_text "Model1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Model1" do
    visit model1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Model1 was successfully destroyed"
  end
end
