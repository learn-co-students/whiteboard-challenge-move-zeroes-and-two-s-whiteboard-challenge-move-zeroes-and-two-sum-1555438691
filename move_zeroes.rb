require "pry"

def move_zeroes(nums)
    
    no_z = nums.select do |num|
        num != 0
    end
    
    count = nums.count - no_z.count
    
    count.times do
        no_z.push(0)
    end
    
    no_z
end


def two_sum(numbers, target)

  numbers.each_with_index do |x,i|
    if j = numbers.index(target - x) 
        return [i,j] 
    end
  end

end




    binding.pry
    0
# "Given an array of numbers, write the method move_zeroes() method to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# For example, given nums = [0, 1, 0, 3, 12], after calling your method, nums should be [1, 3, 12, 0, 0].