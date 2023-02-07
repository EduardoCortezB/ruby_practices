# Write a program called that asks a user how old they are and 
# then tells them how old they will be in 10, 20, 30 and 40 years.

user_age = gets.chomp.to_i

period_time=0
4.times do | n |
    period_time += 10
    user_age += 10
    puts "In #{period_time} years you will be #{user_age} years old"
end