# require './lib/address_book'
require './lib/contact'
require './lib/email'
require './lib/phone'
require './lib/address'

def main_menu
  loop do
    #Main menu block
    puts "\n\nWelcome to AddressBook by Ruby"
    puts "Press '1' to create a new contact"
    puts "Press '2' to view/edit existing contacts"
    puts "Press 'any other key' to quit"
    main_choice = gets.chomp
    exit if main_choice != '1' and main_choice != '2'
    main_menu_selector(main_choice)
  end
end

def contact_editor(input)
  puts "Which contact to modify?"
end

def main_menu_selector(input)
  if input == '1'
    puts "Contact Name?"
    name = gets.chomp
    newContact = Contact.new(name)
    newContact.save
  elsif input == '2'
    puts "Existing Contacts:"
    Contact.all.each_with_index { |contact, index| puts "#{index + 1}. #{contact.name}"}
    puts "Enter a contact number to modify or press 'm' to exit"
    modify_choice = gets.chomp.to_i
    exit if modify_choice == 'm'

    puts "\n\nYou're modifiying the contact: #{Contact.all[modify_choice - 1].name}"
    puts "Press '1' to add an email address"
    puts "Press '2' to add a phone number"
    puts "Press '3' to add an address"
    puts "Press 'm' to return to main menu"
    editing_choice = gets.chomp
    exit if editing_choice != '1' and editing_choice != '2' and editing_choice != '3'
    contact_editor(editing_choice)
  end
end



main_menu

