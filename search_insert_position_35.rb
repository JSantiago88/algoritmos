# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    return -1 if nums.nil? || nums.empty?
    return -1 if target.nil?

    left = 0
    right = nums.size - 1
    middle = nums.size / 2
    indice = -1
    while left <= right
        if target == nums[middle]
            indice = middle
            break
        elsif nums[middle] < target
            left = middle + 1
            middle = (left + right) / 2
        else
            right = middle - 1
            middle = (left + right) / 2
        end

        if left > right
            indice = middle + 1
        end
    end
    indice
end


# caso 1:
#Input: nums = [1,3,5,6], target = 5
#Output: 2

#nums = [1,3,5,6]
#target = 5
#p search_insert(nums, target)

# caso 2:
#Input: nums = [1,3,5,6], target = 2
#Output: 1

nums = [1,3,5,6,8,10,15,24,31]
target = 11
p search_insert(nums, target)
