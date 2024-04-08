#  b) Non-overlapping sum of two sets

def sum_of_sets(arr1,arr2)
  myset = {}
  count = 0
  for i in 0...arr1.length
    myset[arr1[i]] = true
    count += arr1[i]
  end
  for i in 0...arr2.length
    if myset[arr2[i]]
      count -= arr2[i]
    else
      count += arr2[i]
    end
  end
  count
end

arr1 = [1,5,8,6,4,9]
arr2 = [2,3,0]
puts sum_of_sets(arr1,arr2)