# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    return [] if nums.empty?
    return nums[0] if nums.size == 1
    return nums.max if nums.select{|num| num >= 0}.empty?
    max = 0
    sum = 0
    nums.each do |num|
        if sum > 0
            sum += num
        else
            sum = num
        end
        max = [max, sum].max
    end
    max
end

nums1= [-2,1,-3,4,-1,2,1,-5,4] # 6
nums2 = [5,4,-1,7,8] # 23
nums3 = [1] # 1
nums4 = [-1,0] # 0
nums5 = [-3,-2,-2,-3] # -2
cases = [nums1, nums2,nums3, nums4, nums5]
cases.each_with_index do |caso, i|
  puts "Caso #{i+1}:"
  puts max_sub_array(caso)
  puts "#############"
end


