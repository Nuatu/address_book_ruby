class Contact
   @@contacts = []

  def initialize(name)
    @name = name
    @emails = []
    @phones = []
    @addresses = []
  end

  def Contact.all
    @@contacts
  end

  def Contact.clear
    @@contacts = []
  end

  def save
    @@contacts << self
  end

  def name
    @name
  end

  def emails
    @emails
  end

  def phones
    @phones
  end

  def addresses
    @addresses
  end

  def email_list
    result = ""
    @emails.each do |email_object|
      if result == ""
        result += "| " + email_object.email + " | "
      else
        result += email_object.email + " |"
      end
    end
    result
  end

  def phone_list
    result = ""
    @phones.each do |phone_object|
      if result == ""
        result += "| " + phone_object.phone + " | "
      else
        result += phone_object.phone + " |"
      end
    end
    result
  end

  def address_list
    result = ""
    @addresses.each do |address_object|
      if result == ""
        result += "| " + address_object.address + " | "
      else
        result += address_object.address + " |"
      end
    end
    result
  end
end


