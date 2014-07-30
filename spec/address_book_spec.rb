require 'rspec'
require 'contact'
require 'email'
require 'phone'
require 'address'

describe 'Contact' do
  it 'creates a contact object' do
    test_contact = Contact.new('Y')
      expect(test_contact).to be_an_instance_of Contact
      expect(test_contact.name).to eq 'Y'
      expect(test_contact.email).to eq []
      expect(test_contact.phone).to eq []
      expect(test_contact.address).to eq []
  end
end

describe 'Email' do
  it 'creates an email object' do
    test_email = Email.new
      expect(test_email).to be_an_instance_of Email
      expect(test_email.emails).to eq []
    test_email.add_email('test')
      expect(test_email.emails).to eq ['test']
  end
end

describe 'Phone' do
  it 'creates an email object' do
    test_phone = Phone.new
      expect(test_phone).to be_an_instance_of Phone
      expect(test_phone.phones).to eq []
    test_phone.add_phone('test')
      expect(test_phone.phones).to eq ['test']
  end
end

describe 'Address' do
  it 'creates an email object' do
    test_address = Address.new
      expect(test_address).to be_an_instance_of Address
      expect(test_address.addresses).to eq []
    test_address.add_address('test')
      expect(test_address.addresses).to eq ['test']
  end
end
