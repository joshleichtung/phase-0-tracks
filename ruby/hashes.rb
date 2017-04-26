def to_snake_case(string)
  string.downcase.split(" ").join("_")
end

def y_to_true(x)
  x.downcase == 'y' || x.downcase == 'yes' ? true : false
end

def wallpaper_question
  pref = {
    paisley: nil,
    chevrons: nil,
    photoreal_woods: nil,
    abstract_woods: nil
  }
  puts "Wallpaper preferences (say 'y' to all that apply)"
  puts "Paisley"
  pref[:paisley] = y_to_true(gets.chomp)
  puts "Chevrons"
  pref[:chevrons] = y_to_true(gets.chomp)
  puts "Photorealistic woodsy scenes (with or without squirrels)"
  pref[:photoreal_woods] = y_to_true(gets.chomp)
  puts "Abstract woodsy scenes (no squirrels)"
  pref[:abstract_woods] = y_to_true(gets.chomp)
  pref
end

def ombre_question
  ombre_options = ["Fierce", "So last season", "Practically medieval in its appalling irrelevance"]
  puts "Ombre is (select one by number):"
  ombre_options.each_index {|i| puts "#{i + 1}. #{ombre_options[i]}"}
  answer = gets.chomp.to_i 
  if answer.between?(1, 3)
    ombre_options[answer- 1]
  else
    ""
  end
end

def print_submission(submission)
puts %Q|
Name: #{submission[:name]}
Address: #{submission[:address]}
Email: #{submission[:email]}
Phone: #{submission[:phone]}

Fave shade of blue: #{submission[:fave_shade_of_blue]}

Wallpaper preferences:
  Paisley: #{submission[:wallpaper_preferences][:paisley]}
  Chevrons: #{submission[:wallpaper_preferences][:chevrons]}
  Photorealistic woodsy scenes (with or without squirrels): #{submission[:wallpaper_preferences][:photoreal_woods]}
  Abstract woodsy scenes (no squirrels): #{submission[:wallpaper_preferences][:abstract_woods]}

Ombre: #{submission[:ombre]}

|
end

def submit_application_answers
  submission = {
    name: nil,
    address: nil,
    email: nil,
    phone: nil,
    fave_shade_of_blue:nil,
    wallpaper_preferences: {},
    ombre: nil
  }
  puts "Enter your name"
  submission[:name] = gets.chomp

  puts "Enter your Address (one line)"
  submission[:address] = gets.chomp

  puts "Enter you email"
  submission[:email] = gets.chomp

  puts "Enter your phone number"
  submission[:phone] = gets.chomp

  puts "What is your FAVE shade of blue?"
  submission[:fave_shade_of_blue] = gets.chomp

  submission[:wallpaper_preferences] = wallpaper_question

  submission[:ombre] = ombre_question

  submission
end

def update_submission(submission)
  puts "Please specify all answers you would like to change, enter \"done\" when finished"
  update_fields = []
  while update_fields[-1] != "done"
    update_fields.push(gets.chomp)
  end
  update_fields = update_fields.select{|field| ["name", "address", "email", "phone", "fave shade of blue", "wallpaper preferences", "ombre"].include?(field)}

  for field in update_fields
    if field.downcase == 'wallpaper preferences'
      submission[:wallpaper_preferences] = wallpaper_question
    elsif field.downcase == "ombre"
      submission[:ombre] = ombre_question
    else
      puts "Enter new response for #{field}"
      submission[to_snake_case(field).to_sym] = gets.chomp
    end
  end

  submission
end

######DRIVER CODE ########
interior_designer_application = submit_application_answers

puts "***Please Check Your Submission***"
print_submission(interior_designer_application)
interior_designer_application = update_submission(interior_designer_application)
print_submission(interior_designer_application)
