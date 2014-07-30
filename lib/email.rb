class Email
  def initialize()
    @emails = []
  end

  def emails
    @emails
  end

  def add_email(new_email)
    @emails << new_email
  end

  def del_email(new_email)
    @emails.delete_at(new_email)
  end
end


