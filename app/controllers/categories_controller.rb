class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = Category.all.where(user_id: current_user.id)
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.new(category_params)
    category.user_id = current_user.id

    if category.save
      redirect_to categories_path, notice: 'Category created successfully'
    else
      render :new, status: 422
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
