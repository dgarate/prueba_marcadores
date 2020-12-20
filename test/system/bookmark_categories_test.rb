require "application_system_test_case"

class BookmarkCategoriesTest < ApplicationSystemTestCase
  setup do
    @bookmark_category = bookmark_categories(:one)
  end

  test "visiting the index" do
    visit bookmark_categories_url
    assert_selector "h1", text: "Bookmark Categories"
  end

  test "creating a Bookmark category" do
    visit bookmark_categories_url
    click_on "New Bookmark Category"

    fill_in "Bookmark", with: @bookmark_category.bookmark_id
    fill_in "Category", with: @bookmark_category.category_id
    click_on "Create Bookmark category"

    assert_text "Bookmark category was successfully created"
    click_on "Back"
  end

  test "updating a Bookmark category" do
    visit bookmark_categories_url
    click_on "Edit", match: :first

    fill_in "Bookmark", with: @bookmark_category.bookmark_id
    fill_in "Category", with: @bookmark_category.category_id
    click_on "Update Bookmark category"

    assert_text "Bookmark category was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookmark category" do
    visit bookmark_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookmark category was successfully destroyed"
  end
end
