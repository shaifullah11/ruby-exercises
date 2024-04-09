#  h) Rearrange an array using maximum minimum form 

def max_mini arr
  left = 0
  right = arr.length-1
  max_elem = arr[arr.length-1]+1
  for i in 0...arr.length
    if i%2==0
      arr[i] += (arr[right] % max_elem ) * max_elem
      right -= 1
    else
      arr[i] += (arr[left] % max_elem ) * max_elem
      left += 1
    end
  end
  for i in 0...arr.length
    arr[i] = arr[i] / max_elem 
  end
  arr
end

# puts "Enter the elements of the array:"
# arr = gets.chomp.split(' ').map(&:to_i)
arr = [1,2,3,4,5,6,7,8,9]
puts max_mini(arr)