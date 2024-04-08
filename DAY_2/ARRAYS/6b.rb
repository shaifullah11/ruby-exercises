#  b) Bubble sort an array

def bubble_sort(arr)
  size = arr.length
  swapped = false

  i = size - 1
  while(i>1)
    j=0
    while(j<i)
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
        swapped = true
      end
      j += 1
    end
    i-=1
    break unless swapped
  end
  arr
end

puts "Enter the elements of the array separated by spaces:"
arr = gets.chomp.split(' ').map(&:to_i)
sorted_arr = bubble_sort(arr)
puts "Sorted array: #{sorted_arr.inspect}"
