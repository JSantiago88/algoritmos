# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  return [] if s.nil? || s.empty?

  left = 0
  right = s.size - 1
  while left <= right
    aux = s[left]
    s[left] = s[right]
    s[right] = aux
    left +=1
    right -=1
  end
end

# Input: s = ["h","e","l","l","o"]
# Output: ["o","l","l","e","h"]

s = ["h","e","l","l","o"]
reverse_string(s)
p s
