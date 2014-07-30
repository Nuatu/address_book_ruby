class Contact
   @@contacts = []

  def initialize(name)
    @name = name
    @email = []
    @phone = []
    @address = []
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

  def email
    @email
  end

  def phone
    @phone
  end

  def address
    @address
  end
end


