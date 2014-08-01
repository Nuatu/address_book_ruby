# require './lib/address_book'
require './lib/contact'
require './lib/email'
require './lib/phone'
require './lib/address'

def main_menu
  loop do
    #Main menu block
    puts "\nWelcome to AddressBook by Ruby"
    puts "Press '1' to create a new contact"
    puts "Press '2' to view/edit existing contacts"
    puts "Press '3' to delete an existing contact"
    puts "Press 'q' to return to exit"
    main_choice = gets.chomp
    exit if main_choice == 'q'
    main_menu_selector(main_choice)
  end
end

def main_menu_selector(input)
  if input == '1'
    puts "Contact Name?"
    name = gets.chomp
    newContact = Contact.new(name)
    newContact.save
  elsif input == '2'
    puts "\nExisting Contacts:"
    if Contact.all.length == 0
      puts "\nSorry, you have no contacts"
      return
    end
"#{index + 1}. #{contact.name} \n Phone: #{contact.phone_list} Email: #{contact.email_list} Address: #{contact.address_list}"}    puts "\nEnter a contact number to modify or press 'm' to exit"
    modify_choice = gets.chomp.to_i
    unless modify_choice == 'm'
      contact_editor(modify_choice)
    end
  elsif input === '3'
    puts "Existing Contacts:"
    Contact.all.each_with_index { |contact, index| puts "#{index + 1}. #{contact.name}" }
    puts "\nContact to delete?"
    deleted_contact = gets.chomp.to_i
    Contact.all.delete_at(deleted_contact-1)
  end
end

def contact_editor(input)
 puts "\nYou're modifiying the contact: #{Contact.all[input - 1].name} \nEmail: #{Contact.all[input - 1].email_list} \nPhone: #{Contact.all[input - 1].phone_list} \nAddress: #{Contact.all[input - 1].address_list}"
  puts "\nPress '1' to add an email address"
  puts "Press '2' to add a phone number"
  puts "Press '3' to add an address"
  puts "Press '4' to delete an email address"
  puts "Press '5' to delete an phone number"
  puts "Press '6' to delete an address"
  puts "Press 'm' to return to main menu"
  editing_choice = gets.chomp.to_i
  # unless editing_choice != '1' and editing_choice != '2' and editing_choice != '3'
  unless (editing_choice == 'm')
    if editing_choice == 1
      puts "\nEmail address?"
      new_email = gets.chomp
      Contact.all[input-1].emails << Email.new(new_email)
      contact_editor(input)

    elsif editing_choice == 2
      puts "\nPhone?"
      new_phone = gets.chomp
      Contact.all[input-1].phones << Phone.new(new_phone)
      contact_editor(input)

    elsif editing_choice == 3
      puts "\nAddress?"
      new_address = gets.chomp
      Contact.all[input-1].addresses << Address.new(new_address)
      contact_editor(input)

    elsif editing_choice == 4
      puts "\nEmail address to delete?"
      Contact.all[input-1].emails.each_with_index { | email, index | puts "#{index + 1}. #{email.email}" }
      deleted_email = gets.chomp.to_i
      Contact.all[input-1].emails.delete_at(deleted_email-1)
      contact_editor(input)

    elsif editing_choice == 5
      puts "\nPhone to delete?"
      Contact.all[input-1].phones.each_with_index { | phone, index | puts "#{index + 1}. #{phone.phone}" }
      deleted_phone = gets.chomp.to_i
      Contact.all[input-1].phones.delete_at(deleted_phone-1)
      contact_editor(input)

    elsif editing_choice == 6
      puts "\nAddress to delete?"
      Contact.all[input-1].addresses.each_with_index { | address, index | puts "#{index + 1}. #{address.address}" }
      deleted_address = gets.chomp.to_i
      Contact.all[input-1].addresses.delete_at(deleted_address-1)
      contact_editor(input)
    end
  end
end

main_menu

