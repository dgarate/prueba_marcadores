require 'test_helper'

class BookmarkCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookmark_category = bookmark_categories(:one)
  end

  test "should get index" do
    get bookmark_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_bookmark_category_url
    assert_response :success
  end

  test "should create bookmark_category" do
    assert_difference('BookmarkCategory.count') do
      post bookmark_categories_url, params: { bookmark_category: { bookmark_id: @bookmark_category.bookmark_id, category_id: @bookmark_category.category_id } }
    end

    assert_redirected_to bookmark_category_url(BookmarkCategory.last)
  end

  test "should show bookmark_category" do
    get bookmark_category_url(@bookmark_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookmark_category_url(@bookmark_category)
    assert_response :success
  end

  test "should update bookmark_category" do
    patch bookmark_category_url(@bookmark_category), params: { bookmark_category: { bookmark_id: @bookmark_category.bookmark_id, category_id: @bookmark_category.category_id } }
    assert_redirected_to bookmark_category_url(@bookmark_category)
  end

  test "should destroy bookmark_category" do
    assert_difference('BookmarkCategory.count', -1) do
      delete bookmark_category_url(@bookmark_category)
    end

    assert_redirected_to bookmark_categories_url
  end
end
