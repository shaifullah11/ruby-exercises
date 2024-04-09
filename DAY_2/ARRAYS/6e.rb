def qs(arr, low, high)
  pivot = arr[low]  
  i = low + 1
  j = high
  while i <= j
    i += 1 while i <= high && arr[i] <= pivot  
    j -= 1 while j >= low && arr[j] > pivot    
    if i < j
      arr[i], arr[j] = arr[j], arr[i]  
    end
  end
  arr[low], arr[j] = arr[j], arr[low]  
  j 
end

def quick_sort(arr, low, high)
  if low < high
    p = qs(arr, low, high)
    quick_sort(arr, low, p - 1)  
    quick_sort(arr, p + 1, high)  
  end
end

# begin
arr = [78, 75, 1, 7, 8, 75, 67, 7, 54, 897, 5, 67, 8, 97, 654, 4, 87, 8989, 89, 98, 983]
quick_sort(arr, 0, arr.length - 1)
puts arr.inspect
# rescue => e
#   puts e.error
# end