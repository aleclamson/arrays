require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'arrays'

class ArraysTest < MiniTest::Test
	def setup
		@m = Class.new do
     include Arrays
   	end.new
	end
	def middles
		assert_equal [1, 2], @m.middles([1, 1, 5], [6, 2, 1])
		assert_equal [3, 20], @m.middles([5, 3, 5], [1, 20, 11])
		assert_equal [3, 20], @m.middles([5, 3, 0], [1, 20, 11])
		
	end
end
