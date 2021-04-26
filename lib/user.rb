class User
  attr_accessor :email, :age
  @@all_users = Array.new

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save.to_i
    @@all_users << self
  end

  def self.all
    return @@all_users
  end

end