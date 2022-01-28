# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    -1 if nums.nil? || nums.empty?
    left = 0
    medio = nums.size / 2
    rigth = nums.size - 1
    indice = -1
    while left <= rigth
        if nums[medio] == target
            indice = medio
            break
        elsif nums[medio] < target
            left = medio + 1
            medio = (left + rigth) / 2
        else
            rigth = medio - 1
            medio = (left + rigth) / 2
        end
    end
    indice
end

nums = [-1,0,3,5,9,12]
target = 9
p search(nums, target)
