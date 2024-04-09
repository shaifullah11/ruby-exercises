#  g) Inversion count in Array using Merge sort 

def merge(arr, low, mid, high)
  left = low
  right = mid + 1
  temp = []
  count = 0

  while left <= mid && right <= high
    if arr[left] <= arr[right]
      temp << arr[left]
      left += 1
    else
      temp << arr[right]
      right += 1
      count += mid - left + 1  # Increment count for inversions
    end
  end

  while left <= mid
    temp << arr[left]
    left += 1
  end

  while right <= high
    temp << arr[right]
    right += 1
  end

  (low..high).each { |i| arr[i] = temp[i - low] }

  count
end

def inversion_count(arr, low, high)
  return 0 if low >= high

  mid = (low + high) / 2
  count = inversion_count(arr, low, mid) +
          inversion_count(arr, mid + 1, high) +
          merge(arr, low, mid, high)

  count
end

puts "Enter the elements of the array:"
arr = gets.chomp.split(' ').map(&:to_i)
puts "Inversion count:", inversion_count(arr, 0, arr.length - 1)
