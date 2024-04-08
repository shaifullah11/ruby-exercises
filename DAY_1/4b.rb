def is_palindrome(sentence)
    sentence = sentence.downcase.gsub(/[^a-z0-9]/, '')
    checkPalindrome sentence
end

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

sentence = "A man, a plan, a canal, Panama!"
puts is_palindrome(sentence)
  