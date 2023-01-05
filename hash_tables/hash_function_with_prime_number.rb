PRIME_NUMBER = 31

def hash key, length
  total = 0
  [key.size, 100].min.times do |i|
    char = key[i]
    value = (char.ord - 96)
    total = (total * PRIME_NUMBER + value)
  end
  total % length
end

key = hash("ruby" * 400, 11)
arr = []
arr[key] = "ruby"
puts arr[key]
