require "time"
require "pry"

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendee_email)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title
    @attendees = attendee_email
  end

  def postpone_24h(my_event)
    postponed_date = @start_date + 24*60*60
    return postponed_date
  end

  def end_date(my_event)
    end_of_event = @start_date + (@duration*60)
  end

end
binding.pry
puts "end of file"