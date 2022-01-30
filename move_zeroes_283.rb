




# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  return [] if nums.nil? || nums.empty?

  n = nums.size - 1
  left = 0
  right = left + 1
  i = 0
  while i < n
    if nums[left] == 0 && nums[right] != 0
      nums[left] = nums[right]
      nums[right] = 0
      left += 1
      right += 1
    elsif nums[left] == 0 && nums[right] == 0
      right += 1
    else
      left += 1
      right += 1
    end
    i += 1
  end
end

# Input: nums = [0,1,0,3,12]
# Output: [1,3,12,0,0]
nums = [2,1]
move_zeroes(nums)
puts " #{nums}"
