#  c) Remove all vowels from a string

def removeVowels str
    newstr = ""
    vowels = ["a","e","i","o","u"]
    for i in 0..str.length-1
        newstr += str[i] if !(vowels.include?(str[i]))   
    end
    return newstr
end

puts "enter the string:"
str = gets.chomp()

puts removeVowels str

# apple