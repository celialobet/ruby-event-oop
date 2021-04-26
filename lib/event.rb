require "time"
require "pry"

class Event
  attr_accessor :start_date

  def initialize(start_date, duration, title)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title
  end

end
binding.pry
puts "end of file"