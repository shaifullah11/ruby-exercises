def subsequences(str)
    n = str.length
    subsets = []
  
    (1 << n).times do |i|
        subset = ""
        n.times do |j|
            subset += str[j] if (i & (1 << j)) != 0
        end
        subsets << subset
    end
  
    subsets
end


puts "Enter the string:"
str = gets.chomp

puts "Subsequences:"
subsequences(str).each do |subseq|
  puts subseq
end
  
  
  