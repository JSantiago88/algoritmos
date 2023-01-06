class HashTable

  PRIME_NUMBER = 31.freeze

  def initialize length = 17
    @list = Array.new(length)
  end

  def hash key
    total = 0
    [key.size, 100].min.times do |i|
      char = key[i]
      value = (char.ord - 96)
      total = (total * PRIME_NUMBER + value)
    end
    total % @list.size
  end

  def set key, value
    index = hash(key)
    @list[index] ||= []
    @list[index] << [key, value]
    @list[index]
  end

  def get key
    index = hash(key)
    @list[index].find{|value| value.first == key}[1]
  end
end
