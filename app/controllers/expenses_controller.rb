class ExpensesController < ApplicationController
  before_action :authenticate_user!
  def index
    @expenses = Expense.all.where(user_id: current_user.id)
  end

  def new
    @expense = Expense.new
  end

  def create
    expense = Expense.new(expense_params)
    expense.user_id = current_user.id

    if expense.save
      redirect_to expenses_path, notice: 'Expense created successfully'
    else
      render :new, status: 422
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount)
  end
end
