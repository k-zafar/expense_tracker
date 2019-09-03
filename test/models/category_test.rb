require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	def setup
		@one = categories(:one)
		@two = categories(:two)
	end

	test "valid category" do
		assert @one.valid?
	end

	test "invalid without category name" do
		@one.cat_name = nil
		refute @one.valid?
    	assert_not_nil @one.errors[:cat_name]
	end

	test "invalid same category name" do
		@two.cat_name = "MyText"
		@one.save
		refute @two.valid?
    	assert_not_nil @two.errors[:cat_name]
	end

end
