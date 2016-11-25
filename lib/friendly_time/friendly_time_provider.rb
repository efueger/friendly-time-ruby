module FriendlyTime
  class FriendlyTimeProvider
	@one_minute_in_seconds = 60
	@five_minute_in_seconds = @one_minute_in_seconds * 2
	def self.friendly_time(now_time, other_time)
		timeInSecs = now_time - other_time
		if timeInSecs < @one_minute_in_seconds
			"seconds ago"
		elsif timeInSecs < @one_minute_in_seconds * 2
			"about a minute ago"
		elsif timeInSecs < @one_minute_in_seconds * 10
			"minutes ago"
		elsif timeInSecs < @one_minute_in_seconds * 15
			"about 10 minutes ago"
		elsif timeInSecs < @one_minute_in_seconds * 20
			"about 15 minutes ago"
		elsif timeInSecs < @one_minute_in_seconds * 25
			"about 20 minutes ago"
		elsif timeInSecs < @one_minute_in_seconds * 30
			"about 25 minutes ago"
		elsif timeInSecs < @one_minute_in_seconds * 45
			"about half an hour ago"
		end
		
		
		
		
	end
  end
end
