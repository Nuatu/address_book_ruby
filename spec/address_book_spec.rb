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
      expect(test_contact.emails).to eq []
      expect(test_contact.phones).to eq []
      expect(test_contact.addresses).to eq []
  end

  it 'pushes email, phone and address objects to respective arrays in Contact instance' do
  test_contact = Contact.new('Y')
  test_contact.emails << Email.new('email@address.com')
    expect(test_contact.emails[0].email).to eq 'email@address.com'
  test_contact.phones << Phone.new('1-800-DEZ-NUTS')
    expect(test_contact.phones[0].phone).to eq '1-800-DEZ-NUTS'
  test_contact.addresses << Address.new('123 Fake St, Portland, OR')
    expect(test_contact.addresses[0].address).to eq '123 Fake St, Portland, OR'
  end
end

describe 'Email' do
  it 'creates an email object and stores an email address' do
    test_email = Email.new('test')
      expect(test_email).to be_an_instance_of Email
      expect(test_email.email).to eq 'test'
  end
end

describe 'Phone' do
  it 'creates a phone object and stores a phone number' do
    test_phone = Phone.new('test')
      expect(test_phone).to be_an_instance_of Phone
      expect(test_phone.phone).to eq 'test'

  end
end

describe 'Address' do
  it 'creates an address object and stores an address' do
    test_address = Address.new('test')
      expect(test_address).to be_an_instance_of Address
      expect(test_address.address).to eq 'test'

  end
end
