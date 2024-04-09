#    c) Counting sort an array
def counting_sort arr

  max = -1
  for i in 0...arr.length
    max = arr[i] if arr[i]>max 
  end

  newArr = Array.new(max+1,0)

  arr.each do |i| newArr[i]+=1 end
  outArr = []

  newArr.each_with_index do |count,index|
    count.times do outArr<<index end if count!= 0
  end

  outArr.inspect
end

puts "Enter the elements of the array:"
arr = gets.chomp.split(' ').map(&:to_i)
puts counting_sort(arr)
