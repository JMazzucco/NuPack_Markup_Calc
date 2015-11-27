require './markup_calc'
require 'minitest/autorun'

class TestMarkupCalc < Minitest::Test

	def test_amount_input_for_float
		assert_kind_of(Float, amount_input("price"))
	end

	def test_amount_input_for_integer
		assert_kind_of(Integer, amount_input("number"))
	end

	def test_flat_markup
		assert_equal(1050, flat_markup(1000))
	end

	def test_num_workers_markup
		assert_equal(0.06, num_workers_markup(5))
	end

	def test_food_material_markup
		assert_equal(0.13, prod_material_markup(2))
	end

	def test_electronics_material_markup
		assert_equal(0.02, prod_material_markup(3))
	end

	def test_calc_total
		assert_equal(1591.58, calc_total(1364.99, 0.036, 0.13))
	end

	def test_format_current
		assert_equal("2501.50", format_currency(2501.5))
	end

end
