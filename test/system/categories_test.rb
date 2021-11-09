require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @category = categories(:one)
  end

  test "visiting the index" do
    visit categories_url
    assert_selector "h1", text: "Categories"
  end

  test "creating a Category" do
    visit categories_url
    click_on "New Category"

    fill_in "Name", with: @category.name
    fill_in "S0", with: @category.s0
    fill_in "S1", with: @category.s1
    fill_in "S2", with: @category.s2
    fill_in "S3", with: @category.s3
    fill_in "S4", with: @category.s4
    fill_in "S5", with: @category.s5
    click_on "Create Category"

    assert_text "Category was successfully created"
    click_on "Back"
  end

  test "updating a Category" do
    visit categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @category.name
    fill_in "S0", with: @category.s0
    fill_in "S1", with: @category.s1
    fill_in "S2", with: @category.s2
    fill_in "S3", with: @category.s3
    fill_in "S4", with: @category.s4
    fill_in "S5", with: @category.s5
    click_on "Update Category"

    assert_text "Category was successfully updated"
    click_on "Back"
  end

  test "destroying a Category" do
    visit categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category was successfully destroyed"
  end
end
