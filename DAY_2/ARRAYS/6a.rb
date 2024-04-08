#  6a) All unique elements 

def unique_elements arr
  new_arr = [arr[0]]
  for i in 1...arr.length
    new_arr << arr[i] if(arr[i-1] < arr[i])
  end
  puts new_arr.inspect
end
begin
  puts "Enter the elements of the array:"
  arr = gets.chomp.split(' ').sort
  unique_elements arr
end
