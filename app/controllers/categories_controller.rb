class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "New #{@category.title} Category Created!"
      redirect_to categories_path
    else
      @errors = @category.errors
      render :new
      # redirect_to new_category_path
    end
  end

  def index
    @categories = Category.all
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end
end
