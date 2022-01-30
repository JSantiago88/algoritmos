

# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  return [] if nums.nil? || nums.empty?

  n = nums.size - 1
  left = 0
  right = n
  index = n
  result = Array.new(n)
  while left <= right
    a = nums[left].abs2
    b = nums[right].abs2
    if a < b
      result[index] = b
      index -= 1
      right -= 1
    else
      result[index] = a
      index -= 1
      left += 1
    end
  end
  result
end

# Input: nums = [-4,-1,0,3,10]
# Output: [0,1,9,16,100]
# Explanation: After squaring, the array becomes [16,1,0,9,100].
# After sorting, it becomes [0,1,9,16,100].

#nums = [-7,-3,2,3,11]
nums = [-4,-1,0,3,10]
p sorted_squares(nums)
