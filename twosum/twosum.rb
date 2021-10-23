def twosum(nums, target)
  # there are always two numbers that add up to the target in the nums array.
  # return the indices of the array that add up to target
  # iterate through the array, store the complement, along with the current index into a hash
  # once the complement is found in the hash, return the current index and the value that is mapped to the current key
  complement_hash = {}
  nums.each_with_index do |num, idx|
    return [complement_hash[num], idx] if complement_hash.key?(num)

    complement = target - num
    complement_hash[complement] = idx
  end
end

pp twosum([2,7,11,15], 9) # [0,1]
pp twosum([0,4,3,0], 0) # [0,3]
pp twosum([-3,4,3,90], 0) # [0,2]
