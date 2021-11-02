# brute force is to actually list out all possible subarrays from input array
# find the sum of each subarray, find the global max of each subarray.
# This is actually O(n^2) in time complexity and O(n^2) in space complexity

# A more elegant method is to use kadane's algorithm, which only looks through
# the array once with O(n) time complexity, O(1) space complexity
def max_subarray(arr)
  # global_max
  # current_max
  # for each num in the arr
  # compare current_max + arr[i] vs arr[i], assign curr max to larger of the 2
  # if current_max > global_max, update global max
  # return global max
  global_max = -10001
  current_max = -10001
  arr.each do |num|
    current_max = current_max + num > num ? current_max + num : num
    global_max = current_max if current_max > global_max
  end
  global_max
end
