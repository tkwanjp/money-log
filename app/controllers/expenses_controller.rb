class ExpensesController < ApplicationController
	
	def index
		@expenses = Expense.all.order(created_at: :desc)
	end
	
	def new
		@expense = Expense.new
		@categories = Category.all
	end

	def create
		@expense = Expense.new(
			amount: params[:amount],
			category_id: params[:category_id]
			)
		if @expense.save
			flash[:notice] = 'Expense added!'
			redirect_to '/expenses'
		else
			@categories = Category.all #このコードの居場所どうにかしたい…
			render 'expenses/new'
		end
	end

	def edit
		@expense = Expense.find_by id: params[:id]
		@categories = Category.all
	end

	def update
		@expense = Expense.find_by id: params[:id]
		if @expense.update(
			amount: params[:amount],
			category_id: params[:category_id]
			)
			flash[:notice] = 'Expense edited!'
			redirect_to '/expenses'
		else
			@categories = Category.all #このコードの居場所どうにかしたい…			
			render 'expenses/edit'
		end
	end

	def destroy
		@expense = Expense.find_by id: params[:id]
		@expense.destroy
		flash[:notice] = 'Expense was deleted.'
		redirect_to '/expenses'
	end


end
