require 'rspec'
require 'address_book'
require 'contact'

describe 'AddressBook' do
  it 'creates an address book object' do
    test_book = AddressBook.new('X')
    expect(test_book).to be_an_instance_of AddressBook
    expect test_book.description == 'X'
    expect(test_book.contacts).to eq []
  end
end

describe 'Contact' do
  it 'creates a contact object' do
    test_contact = Contact.new('Y')
    expect(test_contact).to be_an_instance_of Contact
    expect test_contact.name == 'Y'
    expect(test_contact.emails).to eq []
    expect(test_contact.phones).to eq []
    expect(test_contact.addresses).to eq []
  end
end
