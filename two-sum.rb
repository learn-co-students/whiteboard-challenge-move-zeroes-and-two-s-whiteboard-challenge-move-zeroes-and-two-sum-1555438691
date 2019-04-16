require 'pry'
numbers = [2,7,11,15]
def two_sum(numbers, target)
    hash = {}
    arr = []
    numbers.each_with_index do |num,ind|
        y = target - num
        if(hash.find{|key,val| key == num})
            arr << hash[num]
            arr << ind
            return arr
        else
         hash[y] = ind
        end
    end
end
binding.pry
0