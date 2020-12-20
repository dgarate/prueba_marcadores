class BookmarkCategoriesController < ApplicationController
  before_action :set_bookmark_category, only: [:show, :edit, :update, :destroy]

  # GET /bookmark_categories
  # GET /bookmark_categories.json
  def index
    @bookmark_categories = BookmarkCategory.all
  end

  # GET /bookmark_categories/1
  # GET /bookmark_categories/1.json
  def show
  end

  # GET /bookmark_categories/new
  def new
    @bookmark_category = BookmarkCategory.new
  end

  # GET /bookmark_categories/1/edit
  def edit
  end

  # POST /bookmark_categories
  # POST /bookmark_categories.json
  def create
    @bookmark_category = BookmarkCategory.new(bookmark_category_params)

    respond_to do |format|
      if @bookmark_category.save
        format.html { redirect_to @bookmark_category, notice: 'Bookmark category was successfully created.' }
        format.json { render :show, status: :created, location: @bookmark_category }
      else
        format.html { render :new }
        format.json { render json: @bookmark_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookmark_categories/1
  # PATCH/PUT /bookmark_categories/1.json
  def update
    respond_to do |format|
      if @bookmark_category.update(bookmark_category_params)
        format.html { redirect_to @bookmark_category, notice: 'Bookmark category was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookmark_category }
      else
        format.html { render :edit }
        format.json { render json: @bookmark_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmark_categories/1
  # DELETE /bookmark_categories/1.json
  def destroy
    @bookmark_category.destroy
    respond_to do |format|
      format.html { redirect_to bookmark_categories_url, notice: 'Bookmark category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark_category
      @bookmark_category = BookmarkCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookmark_category_params
      params.require(:bookmark_category).permit(:bookmark_id, :category_id)
    end
end
