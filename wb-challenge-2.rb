require 'pry'

nums = [0, 1, 0, 3, 12]
def move_zeroes(nums)
    nums.sort_by do |numbers|
        if numbers == 0
            1
        else
            0
        end
    
    end
end
guh = [2, 7, 11, 15]

def two_sum(numbers, target)
    searching_for = {}
    numbers.each do |x|
        difference = target - x
        if searching_for[difference]
            return true
        end
        searching_for[x] = difference
        puts searching_for
    end
    return "Sorry, no numbers in the array add up to the requested integer"
end




binding.pry
1