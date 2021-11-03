# input: array of integers
# output: array of arrays, with each element being [nums[i], nums[j], nums[k]]
# where i != j, i != k, j != k and nums[i] + nums[j] + nums[k] = 0
# there should be no duplicate triplets
def three_sum(nums)
  nums.sort!
  res = []
  # for each num, find the two constituent targets
  for i in 0..nums.length - 3 do
    next if i > 0 && nums[i] == nums[i - 1]

    partial_target = 0 - nums[i]
    j = i + 1
    k = nums.length - 1
    while j < k
      if nums[j] + nums[k] == partial_target
        res.push([nums[i], nums[j], nums[k]])
        j+=1 while j < k && nums[j] == nums[j+1]
        k-=1 while j < k && nums[k] == nums[k-1]
        j+=1
        k-=1
      elsif nums[j] + nums[k] > partial_target
        k-=1 while j < k && nums[k] == nums[k-1]
        k-=1
      else
        j+=1 while j < k && nums[j] == nums[j+1]
        j+=1
      end
    end
  end
  return res
end

pp three_sum([-1,0,1,2,-1,-4])
pp three_sum([0,0,0,0])
# O(n) time complexity

def two_sum(nums, target)
    hash_map = {}
    nums.each_with_index do |num, idx|
        return [nums[hash_map[num]], num] if hash_map.key?(num)
        complement = target - num
        hash_map[complement] = idx
    end
    return []
end

# O(nlog(n)) time complexity

def two_sum_bidirectional(nums, target)
  nums.sort!
  j = nums.length - 1
  i = 0
  while i != j
    # add nums[i] + nums[j]. if equal to target, return result
    return [nums[i], nums[j]] if nums[i] + nums[j] == target

    nums[i] + nums[j] > target ? j -= 1 : i += 1
  end
  return []
end
