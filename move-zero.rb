require 'pry'
nums = [0,1,0,3,12]

def move_zeroes(nums)
    length = nums.length
    count=0
    for a in 0...length
        if nums[a]!=0
            nums[count]=nums[a]
            count+=1
        end
    end

    while count<length
        nums[count]=0
        count+=1
    end
    return nums
end

binding.pry
0