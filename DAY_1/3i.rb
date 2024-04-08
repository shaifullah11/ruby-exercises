def count_substrings_divisible_by_6(s)
    count = 0
  
    (0...s.length).each do |i|
      num = 0
      (i...s.length).each do |j|
        num = num * 10 + s[j].to_i   #4086
        count += 1 if num % 6 == 0
      end
    end
  
    count
end

puts "Enter a Number:"
s = gets.chomp

result = count_substrings_divisible_by_6(s)
puts "Number of substrings divisible by 6: #{result}"
  