class QuizzesController < ApplicationController
  def index
    @expense = Expense.last    
  end

  def new
    @expense = Expense.new
  end
end
