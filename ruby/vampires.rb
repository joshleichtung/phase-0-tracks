def answer_yes?(string)
case string.downcase
when 'y'
  true
when 'yes'
  true
when 'yeah'
  true
else
  false
end
end

def calc_age(year_born)
  Time.now.year - year_born
end

def age_correct?(year_born, age)
  calc_age(year_born).between?(age, age + 1)
end

puts 'What is your name?'
name = gets.chomp

puts 'How old are you?'
how_old = gets.chomp.to_i

puts 'What year were you born?'
birth_year = gets.chomp.to_i

puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
order_garlicbread = gets.chomp
order_garlicbread = answer_yes?(order_garlicbread)

puts 'Would you like to enroll in the company’s health insurance?'
enroll_insurance = gets.chomp
enroll_insurance = answer_yes?(enroll_insurance)

vampire_status = nil
if age_correct?(birth_year, how_old) &&
    enroll_insurance &&
    order_garlicbread
  vampire_status = 'Probably not a vampire.'
end

if !age_correct?(birth_year, how_old) &&
    (!order_garlicbread || !enroll_insurance)
  vampire_status = 'Probably a vampire.'
end

if !age_correct?(birth_year, how_old) &&
    (!order_garlicbread && !enroll_insurance)
  vampire_status = 'Almost certainly a vampire.'
end

if ['drake cula', 'tu fang'].include?(name.downcase)
  vampire_status = "Definitely a vampire."
end
vampire_status = 'Results inconclusive' if !vampire_status

puts %Q|
Name: #{name}
How old?: #{how_old}
Birth Year: #{birth_year}
Order Garlic Bread?: #{order_garlicbread}
Enroll Health Insurance?: #{enroll_insurance}
Vampire Status: #{vampire_status}
|
