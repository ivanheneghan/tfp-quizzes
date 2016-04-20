class ExpensesController < ApplicationController
  def index
    @expense = Expense.all    
  end

  def create
     @expense = Expense.create(quote_params)
    if @expense.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  def about
  end

  private

  def quote_params
    params.require(:expense).permit(:expenses, :amount)
  end
end
