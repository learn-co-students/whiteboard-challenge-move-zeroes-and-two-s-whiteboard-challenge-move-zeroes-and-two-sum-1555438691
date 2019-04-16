# web-week-2-cs-problem

require 'pry'

def move_zeroes(nums)
  # ## Problem1
  # "Given an array of numbers, write the method `move_zeroes()` method to move all 0's to the end of it while maintaining the relative
  #  order of the non-zero elements.
  # For example, given nums = `[0, 1, 0, 3, 12]`, after calling your method, nums should be `[1, 3, 12, 0, 0]`.
  array_size = nums.count
  non_zeros = nums.reject!{|x| x == 0}
  non_zeros.fill(0,non_zeros.size..array_size-1)
end

## Problem2

def two_sum(numbers, target)
  # "Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a
  #  specific target number.
  # The method `two_sum` should return the indices of the two numbers such that they add up to the target, where index1
  #  must be less than index2.
  index = 1
  result = {index1: nil, index2: nil}
  numbers.each do |first_number|
    numbers[index..numbers.size].each do |second_number|
      if second_number + first_number == target
        return {index1: first_number, index2: second_number}
      end
    end
    index += 1
  end
  "No combination exists"
end
