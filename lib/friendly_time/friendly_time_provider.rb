module FriendlyTime
  class FriendlyTimeProvider
	@one_minute_in_seconds = 60
	@one_hour_in_seconds = @one_minute_in_seconds * 60
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
		elsif timeInSecs < @one_hour_in_seconds
			"about 45 minutes ago"
		elsif timeInSecs < @one_hour_in_seconds * 2
			"about an hour ago"
		elsif timeInSecs < @one_hour_in_seconds * 3
			"a couple of hours ago"
		elsif timeInSecs < @one_hour_in_seconds * 12
			"a few hours ago"
		elsif timeInSecs < @one_hour_in_seconds * 18
			"about 12 hours ago"
		end
		
		
		
		
	end
  end
end
