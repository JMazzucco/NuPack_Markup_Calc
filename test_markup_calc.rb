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

end



