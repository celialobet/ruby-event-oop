require "time"

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendee_emails)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title
    @attendees = attendee_emails
  end

  def postpone_24h
    return postponed_date = @start_date + (24*60*60)
  end

  def end_date
    return end_of_event = @start_date + (@duration*60)
  end

  def is_past?
    return Time.now > @start_date
  end

  def is_future?
    return Time.now < @start_date
  end

  def is_soon?
    return (Time.now - @start_date) < (30*60) 
  end

  def to_s 
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date.strftime('%Y-%m-%d %H:%M')}"
    puts ">Durée : #{@duration} minutes"
    puts ">Invités : #{@attendees.join(", ")}"
  end


end