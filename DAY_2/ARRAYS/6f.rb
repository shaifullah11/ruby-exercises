#  f) Sub-array with the given sum

def sub_arraysum(arr,sum)
  count = 0
  end_ind = arr.length-1
  start_ind = arr.length-1
  for i in (arr.length-1).downto(0)
    return start_ind,end_ind if count == sum 
    count += arr[i]
    if count < sum
      start_ind -= 1
    elsif count > sum
      count -= arr[end_ind]
      end_ind -= 1
    end
  end
  return "NO sub array found"
end


puts "Enter the elements of the array:"
arr = gets.chomp.split(' ').map(&:to_i)
puts "Enter the sum:"
sum = gets.chomp.to_i

puts sub_arraysum(arr, sum)