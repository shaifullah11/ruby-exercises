def subString(str)
    for i in 0...str.length
      for j in i...str.length
        sub_string = str[i..j]
        puts sub_string
      end
    end
  end
  
puts "Enter the string:"
str = gets.chomp
  
subString(str)

# hello
  