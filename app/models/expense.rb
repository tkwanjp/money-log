class Expense < ApplicationRecord
	validates :amount, presence: true

	def category
		Category.find_by id: self.category_id
	end
end
