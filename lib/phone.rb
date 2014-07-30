class Phone
  def initialize()
    @phones = []
  end

  def phones
    @phones
  end

  def add_phone(new_phone)
    @phones << new_phone
  end

  def del_email(new_phone)
    @phones.delete_at(new_phone)
  end
end


