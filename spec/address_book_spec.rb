require 'rspec'
require 'address_book'

describe 'AddressBook' do
  it 'creates a contact object' do
    test_book = AddressBook.new('X')
    expect(test_book).to be_an_instance_of AddressBook
    expect(test_book.contacts).to eq []
  end

end

