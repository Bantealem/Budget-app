class ExpensesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])

    if @category.user == current_user
      @expense = Expense.new
    else
      flash[:alert] = 'You can only create expenses from your categories'
      redirect_to categories_path
    end
  end

  def create
    @category = Category.find(params[:category_id])
    if @category.user != current_user
      flash[:alert] = 'You can only create expenses from your categories'
      redirect_to categories_path
    end
    if expense_params[:category_ids].length == 1
      flash[:alert] = 'Must select at least one category'
      redirect_to new_category_expense_path(@category)
    else
      @category = Category.find(params[:category_id])
      @expense = Expense.new(expense_params)
      @expense.user = current_user

      if @expense.save
        flash[:notice] = 'Expense was created successfully'
        redirect_to @category
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, category_ids: [])
  end
end
