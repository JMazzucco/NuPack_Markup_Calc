require './markup_calc'
require 'minitest/autorun'

class TestMarkupCalc < Minitest::Test

	def test_amount_input_for_float
		assert_kind_of(Float, amount_input("price"))
	end

	def test_amount_input_for_integer
		assert_kind_of(Integer, amount_input("number"))
	end

	def test_category_input_for_string
		assert_kind_of(String, prod_category)
	end

	def test_flat_markup
		assert_equal(1050, flat_markup(1000))
	end

	def test_num_workers_markup
		assert_equal(0.06, num_workers_markup(5))
	end

	def test_food_category_markup
		assert_equal(0.13, prod_category_markup("Food"))
	end

	def test_electronics_category_markup
		assert_equal(0.02, prod_category_markup("Electronics"))
	end

end



