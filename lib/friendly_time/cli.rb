require 'thor'
require 'friendly_time'
module FriendlyTime
  class CLI < Thor
	desc "friendly_time abc", "Returns a casual description of the time between the two given times"
	method_option :now_time
	method_option :other_time
	def friendly_time(now_time, other_time)
	  puts "the options are: #{options}"
	  # puts FriendlyTime::FriendlyTimeProvider.friendly_time(options[:now_time], options[:other_time])
	end
  end
end


