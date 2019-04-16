def move_zeroes(nums)
  (0...nums.length).each do |i|
    if nums[i] == 0
      (i...(nums.length-1)).each do |j|
        tmp = nums[j]
        nums[j] = nums[j+1]
        nums[j+1] = tmp
      end
    end
  end
  nums
end


def two_sum(numbers,target)
  (0...(numbers.length-1)).each do |i|
    ((i+1)...numbers.length).each do |j|
      if numbers[i] + numbers[j] == target
        return {index1:i, index2:j}
      end
    end
  end
end
