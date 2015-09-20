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
	def test_middles
		assert_equal [1, 2], @m.middles([1, 1, 5], [6, 2, 1])
		assert_equal [3, 20], @m.middles([5, 3, 5], [1, 20, 11])
		assert_equal [3, 20], @m.middles([5, 3, 0], [1, 20, 11])
	end

	def test_max
		assert_equal 5, @m.max([1, 2, 3, 4, 5])
		assert_equal 5, @m.max([1, 2, 5, 4, 2])
		assert_equal 9, @m.max([1, 2, 6, 4, 5, 9, 2])
		assert_equal 7, @m.max([1, 2, 7, 4, 5, 2])
	end
	def test_lucky13
		assert_equal true, @m.lucky13([2, 5, 7, 9])
		assert_equal false, @m.lucky13([2, 5, 7, 3])
		assert_equal false, @m.lucky13([1, 5, 7, 3])
		assert_equal false, @m.lucky13([1, 5, 7, 10])
		
	end
	def test_same_ends
		assert_equal true, @m.same_ends([3, 4, 6, 3])
		assert_equal false, @m.same_ends([3, 5, 3, 5, 5])
	end
	
end

