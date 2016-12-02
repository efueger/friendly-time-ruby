require 'thor'
require 'friendly_time'
module FriendlyTime
  class CLI < Thor
	desc "friendly_time OTHER_TIME NOW_TIME", "Returns a casual description of the time between OTHER_TIME & NOW_TIME"
	def friendly_time(other_time, now_time = (Time.now.to_i * 1000))
	  puts FriendlyTime::FriendlyTimeProvider.friendly_time(now_time.to_i, other_time.to_i)
	end
  end
end


