# Return a reversed copy of the array
def reverse(an_array)
	an_array.reverse
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('hello') returns {'h'=>1, 'l'=>2, 'o'=>1}
def histogram(a_string)
	count = 0
	letter_map = {}
	while count < a_string.length
		if letter_map[a_string[count]] == nil
			letter_map[a_string[count]] = 1
		else
			letter_map[a_string[count]] += 1
		end
		count += 1
	end
	return letter_map
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
	summation = 0
	for item in an_array
		if item.is_a? Integer
			summation += item
		end
		if item.is_a? Float
			summation += item
		end
	end
	return summation
end

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
	count = 0
	an_array = []
	while count <100
		an_array[count] = count
		if count%5 == 0
			an_array[count] = 'Buzz'
		end
		if count%3 == 0
			if count%5 == 0
				an_array[count] = 'FizzBuzz'
			else
				an_array[count] = 'Fizz'
			end
		end
		count +=1
	end
	return an_array
end

# Uncomment each of these to test your functions
# puts reverse([3,6,'dog']).inspect
# puts histogram('The Quick brown fox').inspect
# puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
# puts fizzbuzz.join("\n")