

def hash value, length
  total = 0
  value.each_char do |char|
    total += (char.ord - 96)
  end
  total % length
end

key = hash("ruby", 11)
arr = []
arr[key] = "ruby"
arr[key]
