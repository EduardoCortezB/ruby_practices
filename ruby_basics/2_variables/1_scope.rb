
# gets values from the console

# a=gets.chomp # chomp delets the carriage chatactiers at the end.

# ---------------------

name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

print_full_name 'Peter', 'Henry'   # prints Peter Henry
print_full_name 'Lynn', 'Blake'    # prints Lynn Blake
print_full_name 'Kim', 'Johansson' # prints Kim Johansson
puts name                          # prints Somebody Else

# -----------------------

# Definition of a block code using do/end and keys
# The variables assigned in outer scope can be accesed by block codes
# but if a variable is declared in inner scope and called out will be a problem

total = 0
# iteration of an array using the instruction each
[1, 2, 3].each { |number| total += number }
puts total # 6

total = 0
[1, 2, 3].each do |number|
  total += number
end
puts total # 6
# -------------------------

a = 5

3.times do |n|    # method invocation with a block
  a = 3
  b = 5           # b is initialized in the inner scope
end

puts a
puts b            # is b accessible here, in the outer scope?

# -------------------------


# If is used a for or do, the variables assigned in the inner scope can be accesed from out of the block
# Only when is used each or times cant access to the variables declared into the block.

arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a       # a is accesible