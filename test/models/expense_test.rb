require "test_helper"

class ExpenseTest < ActiveSupport::TestCase
  def setup
    @expense = Expense.new(amount: 100, category_id: 1)
  end
  
  test "should be valid" do
    assert @expense.valid?
  end
  
  test "amount shoud be present" do
    @expense.amount = nil
    assert_not @expense.valid?
  end
  
  # test "category should be found" do
  #   assert @expense.category # returns nil. Needs test data
  # end
end
