class Address
  def initialize()
    @addresses = []
  end

  def addresses
    @addresses
  end

  def add_address(new_address)
    @addresses << new_address
  end

  def del_email(new_address)
    @addresses.delete_at(new_address)
  end
end
