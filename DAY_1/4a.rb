#  4a) Check if a string is a palindrome
def checkPalindrome str
    left = 0
    right = str.length - 1 

    while(left < right)
        return "false" if str[left] != str[right]
        left += 1
        right -= 1
    end
    "true"
end

puts "Enter a string to check palindrome"
str  = gets.chomp
puts checkPalindrome str