require './markup_calc'
require 'minitest/autorun'

class TestMarkupCalc < Minitest::Test

	def test_base_price_input
		assert(base_price_input)
	end

	def test_people_needed_input
		assert(people_needed_input)
	end
end