#  a) Are two sets disjoint?

def find_disjoint(arr1,arr2)
  myset = {}
  for i in 0...arr1.length
    myset[arr1[i]] = 1
  end
  for i in 0...arr2.length
    if myset[arr2[i]]
      return false
    end
  end
  return true
end


arr1 = [1,5,8,6,9]
arr2 = [2,3,4,0]
puts find_disjoint(arr1,arr2)


# 0(n+m)