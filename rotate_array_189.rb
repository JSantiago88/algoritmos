# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  return [] if nums.nil? || nums.empty?
  return nums if nums.size == 1

  k = k % nums.size
  len = nums.size - 1
  left = 0
  right = nums.size - k
  reverse(nums, right, len)
  reverse(nums, left, right-1)
  reverse(nums, left, len)
end

def reverse nums, i, j
  while i < j
    aux = nums[i]
    nums[i] = nums[j]
    nums[j] = aux
    i+=1
    j-=1
  end
end

#[1,2,3,4, 5,6,7]
#[4,3,2,1, 7,6,5]
#[5,6,7,1, 2,3,4]

# Input: nums = [1,2,3,4, 5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]
# Explanation:
# rotate 1 steps to the right: [7,1,2,3,4,5,6]
# rotate 2 steps to the right: [6,7,1,2,3,4,5]
# rotate 3 steps to the right: [5,6,7,1,2,3,4]

nums = [1,2,3,4,5,6]
k = 11
rotate(nums, k)
p nums
