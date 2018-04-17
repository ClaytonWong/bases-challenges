def base7(string)
    
  len = string.length # Find length of string including end of line character
  index = len - 2 # Find index of least significant digit in input
  count = 0
  sum = 0
    
  while(count < len-1) # While not finished
    char = string[index] # Get last printed character in string
    digit = char.to_i # Convert it to an integer
    
    # Next sum is previous sum plus base to power of count multiplied by current digit
    sum = ((7 ** count) * digit) + sum  
    index -= 1 # Go to next most significant digit
    count += 1 # Go to next "power"
  end
    
  return sum
end

puts 'Enter a base 7 number:'
string = gets # get input from user

puts 'Entered base 7 number converted to decimal is:'
puts base7(string) # Call base7 method