require 'date'

contacts = [
  {
    name: {first: "John", middle_initial: "J", last: "Doe"},
    dob: Date.new(1999, 1, 1),
    address: {
      street: "1234 Main St",
      city: "Springfield",
      state: "NY",
      zip: 12345
    },
    phone_numbers: [
      {label: "cell", number: "555-555-1234"},
      {label: "work", number: "555-123-1234 ex. 2"},
      {label: "home", number: "555-123-1122"}
    ]
  },
  {
    name: {first: "Jane", middle_initial: "Q", last: "Doe"},
    dob: Date.new(1988, 2, 3),
    address: {
      street: "3456 Street Lane",
      city: "New York",
      state: "NY",
      zip: 23456
    },
    phone_numbers: [
      {label: "cell", number: "555-155-1134"},
      {label: "primary", number: "555-122-1122"}
    ]
  },
  {
    name: {first: "Sally", middle_initial: "Q", last: "Boone"},
    dob: Date.new(1989, 12, 11),
    address: {
      street: "4040 40th Ave",
      city: "Chicago",
      state: "IL",
      zip: 12344
    },
    phone_numbers: [
      {label: "cell", number: "555-225-1232"},
      {label: "work", number: "555-153-1534 ex. 2"},
      {label: "home", number: "555-123-1522"}
    ]
  }

]

# Driver Code
puts "First contact's middle initial: #{contacts.first[:name][:middle_initial]}\n\n"
puts "Each Contact's phone numbers"
contacts.each do |contact|
  puts "\nName: #{contact[:name][:first]} #{contact[:name][:middle_initial]} #{contact[:name][:last]}"
  puts "Phone Numbers:"
  contact[:phone_numbers].each do |phone|
    puts "#{phone[:label]}: #{phone[:number]}"
  end
end
