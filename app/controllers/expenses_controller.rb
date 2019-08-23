class ExpensesController < ApplicationController
	def new

	end

	def create
		@expense = Expense.new(params[:expense])
 
  		@expense.save
  		redirect_to @expense
	end
end
