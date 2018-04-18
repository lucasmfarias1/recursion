def merge_sort(array)
  if array.length < 2
    return array
  else
    len = array.length - 1
    first_half = merge_sort(array[0..len / 2])
    second_half = merge_sort(array[(len / 2) + 1..-1])

    merged_array = []

    (len + 1).times do |i|
      if first_half.empty?
        merged_array << second_half.shift
        next
      elsif second_half.empty?
        merged_array << first_half.shift
        next
      end

      if first_half[0] < second_half[0]
        merged_array << first_half.shift
      else
        merged_array << second_half.shift
      end
    end
    return merged_array
  end
end

p merge_sort([3,2,4,9,1,0]) # => [0, 1, 2, 3, 4, 9]

p merge_sort([7,4,32,937,40,8,2,534]) # => [2, 4, 7, 8, 32, 40, 534, 937]
