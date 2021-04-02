class ExpensesController < ApplicationController
	def new
		@expense = Expense.new
	end

	def create
		@expense = Expense.new amount: params[:amount]
		if @expense.save
			redirect_to '/'
		else
			render 'expenses/new'
		end
	end

	def index
		@expenses = Expense.all#.order(created_at: :desc)
	end
end
