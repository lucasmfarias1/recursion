def fibs(n)
  result = []
  (0...n).each do |i|
    i < 2 ? result << i : result << result[i - 1] + result[i - 2]
  end
  result
end

p fibs(10) # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

def fibs_rec(n)
  if n <= 2
    return n == 2 ? [0, 1] : [0]
  end

  x = fibs_rec(n - 1)
  return x << x[-1] + x[-2]
end

p fibs_rec(10) # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
