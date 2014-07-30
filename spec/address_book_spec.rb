require 'rspec'
require 'address_book'

describe 'Address_book' do
  it 'creates a contact object' do
    test_book = Address_book.new('X')
    expect(test_book).to be_an_instance_of Address_book
  end
end
