puts 'What is your name?'
name = gets.chomp

puts 'How old are you?'
how_old = gets.chomp

puts 'What year were you born?'
birth_year = gets.chomp

puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
order_garlicbread = gets.chomp

puts 'Would you like to enroll in the company’s health insurance?'
enroll_insurance = gets.chomp

puts %Q|
Name: #{name}
How old?: #{how_old}
Birth Year: #{birth_year}
Order Garlic Bread?: #{order_garlicbread}
Enroll Health Insurance?: #{enroll_insurance}
|
