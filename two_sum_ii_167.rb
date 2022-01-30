# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    return [] if numbers.nil? || numbers.empty?
    return [] if target.nil?

    i = 0
    j = numbers.size - 1
    result = []
    while i < j
        total = numbers[i] + numbers[j]
        if total == target
            result = [i+1, j+1]
            break
        elsif total < target
            i += 1
        else
            j -= 1
        end
    end
    result
end

# caso 1
#Input: numbers = [2,7,11,15], target = 9
#Output: [1,2]

#numbers = [2,7,11,15]
#target = 9

# caso 2
#Input: numbers = [2,3,4], target = 6
#Output: [1,3]

numbers = [2,3,4]
target = 6

p two_sum(numbers, target)
