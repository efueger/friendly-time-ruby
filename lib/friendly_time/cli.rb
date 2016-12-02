require 'thor'
require 'friendly_time'
module FriendlyTime
  class CLI < Thor
	desc "print_friendly_time other_time now_time", "Prints a casual description of the time between other_time & now_time. now_time is optional - if not provided, the current time will be used."
	def print_friendly_time(other_time, now_time = (Time.now.to_i * 1000))
	  puts FriendlyTime::FriendlyTimeProvider.friendly_time(now_time.to_i, other_time.to_i)
	end
  end
end


