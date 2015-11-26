require './markup_calc'
require 'minitest/autorun'

class TestMarkupCalc < Minitest::Test

	def test_base_price_input
		assert(base_price_input)
	end
end