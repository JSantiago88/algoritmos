
def fib number
  return 1 if number < 2
  arr = [0,1,1]
  while arr.size <= number
    arr[arr.size] = arr[arr.size - 1] + arr[arr.size - 2]
  end
  arr[number]
end

p fib(90000)
