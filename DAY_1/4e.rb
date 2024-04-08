def compress_string(s)
    freq = [0] * 26
  
    s.each_char do |i|
      freq[i.ord - 'a'.ord] += 1
    end
  
    ('a'..'z').each_with_index do |char, i|
      if freq[i].zero?
        next
      end
  
      print "#{char}#{freq[i]}"
    end
end

puts "Enter the string"
s = gets.chomp
compress_string(s)
