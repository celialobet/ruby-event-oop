require "pry"
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

  def self.find_by_email(email)
    @@all_users.each do |user|
      if email == user.email
        return user
      end
    end
  end

end

binding.pry
puts "end of file"