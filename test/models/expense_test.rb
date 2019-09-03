require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase

	def setup
		@expense = expenses(:expense)
	end

	test "valid expense" do
		assert @expense.valid?
	end

	test "invalid without amount" do
		@expense.amount = nil
		refute @expense.valid?, "amount is required"
    	assert_not_nil @expense.errors[:amount], "Error"
	end

	test "invalid without description" do
		@expense.description = nil
		refute @expense.valid?
    	assert_not_nil @expense.errors[:description]
	end

	test "invalid without user" do
		@expense.user = nil
		refute @expense.valid?
    	assert_not_nil @expense.errors[:user]
	end
end
