module FriendlyTime
  class FriendlyTimeProvider
	@one_minute_in_seconds = 60
	@one_hour_in_seconds = @one_minute_in_seconds * 60
	@one_day_in_seconds = @one_hour_in_seconds * 24
	@one_week_in_seconds = @one_day_in_seconds * 7
	@one_month_in_seconds = @one_day_in_seconds * 28
	@one_year_in_seconds = @one_month_in_seconds * 12
	
	def self.friendly_time(from_time, to_time)
		timeInSecs = (from_time - to_time)  / 1000
		
		if timeInSecs.abs < @one_minute_in_seconds
			if timeInSecs > 0
				"seconds ago"
			else
				"in less than a minute"
			end
		elsif timeInSecs.abs < @one_minute_in_seconds * 2
			if timeInSecs > 0
				"about a minute ago"
			else
				"in about a minute"
			end
		elsif timeInSecs.abs < @one_minute_in_seconds * 15
			if timeInSecs > 0
				"about 10 minutes ago"
			else
				"in about 10 minutes"
			end
		elsif timeInSecs.abs < @one_minute_in_seconds * 20
			if timeInSecs > 0
				"about 15 minutes ago"
			else
				"in about 15 minutes"
			end
		elsif timeInSecs.abs < @one_minute_in_seconds * 25
			if timeInSecs > 0
				"about 20 minutes ago"
			else
				"in about 20 minutes"
			end
		elsif timeInSecs.abs < @one_minute_in_seconds * 30
			if timeInSecs > 0
				"about 25 minutes ago"
			else
				"in about 25 minutes"
			end
		elsif timeInSecs.abs < @one_minute_in_seconds * 45
			if timeInSecs > 0
				"about half an hour ago"
			else
				"in about half an hour"
			end
		elsif timeInSecs.abs < @one_hour_in_seconds
			if timeInSecs > 0
				"about 45 minutes ago"
			else
				"in about 45 minutes"
			end
		elsif timeInSecs.abs < @one_hour_in_seconds * 2
			if timeInSecs > 0
				"about an hour ago"
			else
				"in about an hour"
			end
		elsif timeInSecs.abs < @one_hour_in_seconds * 3
			if timeInSecs > 0
				"a couple of hours ago"
			else
				"in a couple of hours"
			end
		elsif timeInSecs.abs < @one_hour_in_seconds * 12
			if timeInSecs > 0
				"a few hours ago"
			else
				"in a few hours"
			end
		elsif timeInSecs.abs < @one_hour_in_seconds * 18
			if timeInSecs > 0
				"about 12 hours ago"
			else
				"in about 12 hours"
			end
		elsif timeInSecs.abs < @one_day_in_seconds
			if timeInSecs > 0
				"about 18 hours ago"
			else
				"in about 18 hours"
			end
		elsif timeInSecs.abs < @one_day_in_seconds * 2
			
			if timeInSecs > 0
				"yesterday"
			else
				"tomorrow"
			end
		elsif timeInSecs.abs < @one_day_in_seconds * 3
			if timeInSecs > 0
				"a couple of days ago"
			else
				"in a couple of days"
			end
			
		elsif timeInSecs.abs < @one_week_in_seconds
			if timeInSecs > 0
				"days ago"
			else
				"in a few days"
			end
		elsif timeInSecs.abs < @one_week_in_seconds * 2
			if timeInSecs > 0
				"about a week ago"
			else
				"in about a week"
			end
		elsif timeInSecs.abs < @one_week_in_seconds * 3
			if timeInSecs > 0
				"a couple of weeks ago"
			else
				"in a couple of weeks"
			end
		elsif timeInSecs.abs < @one_month_in_seconds * 2
			if timeInSecs > 0
				"weeks ago"
			else
				"in a few weeks"
			end
		elsif timeInSecs.abs < @one_year_in_seconds
			if timeInSecs > 0
				"months ago"
			else
				"in a few months"
			end
		elsif timeInSecs.abs < @one_year_in_seconds * 2
			if timeInSecs > 0
				"about a year ago"
			else
				"in about a year"
			end
		elsif timeInSecs.abs < @one_year_in_seconds * 3
			if timeInSecs > 0
				"a couple of years ago"
			else
				"in a couple of years"
			end
		elsif timeInSecs > 0
			"years ago"
		else
			"years from now"
		end
	end
  end
end
