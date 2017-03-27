puts "Please enter a whole number:"
num = gets.chomp

while num.to_i != num.to_f || num.to_i == 0
  puts "Error! Only enter whole numbers, no words or zero:"
  num = gets.chomp
end

def last_digit(n)
  n % 10
end

def last_two_digits(n)
n % 100
end

if last_two_digits(num.to_i) >=11 && last_two_digits(num.to_i) <= 13
  suffix = "th"	
elsif last_digit(num.to_i) == 1
  suffix = "st"
elsif last_digit(num.to_i) == 2
  suffix = "nd"
elsif last_digit(num.to_i) ==3
  suffix = "rd"
else
  suffix = "th"
end

puts "That number is the #{num}#{suffix} number!"
