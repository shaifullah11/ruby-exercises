#  d) Merge sort an array

def merge(arr,low,mid,high)
  left = low
  right = mid+1
  temp = []
  while(left<=mid && right<=high)
    if arr[left] < arr[right]
      temp<<arr[left]
      left += 1
    else
      temp<<arr[right]
      right += 1
    end
  end
  while(left<=mid)
    temp<<arr[left]
    left += 1
  end
  while(right<=high)
    temp<<arr[right]
    right += 1
  end
  for i in low..high
    arr[i]=temp[i-low]
  end
end

def merge_sort(arr, low, high)
  return if low >= high

  mid = (low + high) / 2
  merge_sort(arr, low, mid)
  merge_sort(arr, mid + 1, high)
  merge(arr, low, mid, high)

  arr.inspect
end
puts "Enter the elements of the array:"
arr = gets.chomp.split(' ').map(&:to_i)
puts merge_sort(arr,0,arr.length-1)
