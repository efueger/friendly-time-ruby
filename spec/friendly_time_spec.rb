require_relative '../lib/friendly_time.rb'
require_relative '../lib/version.rb'

describe Friendly_Time do
    it 'has a version number' do
    expect(Friendly_Time::VERSION).not_to be nil
	end
	
	before(:all) do
		@one_minute_in_millis = (60 * 1000)
		@one_hour_in_millis = @one_minute_in_millis * 60
		@one_day_in_millis = @one_hour_in_millis * 24
		@one_week_in_millis = @one_day_in_millis * 7
		@one_month_in_millis = @one_day_in_millis * 28
		@one_year_in_millis = @one_month_in_millis * 12
	end
	
	it 'answers with seconds ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(5000, 0)).to eql("seconds ago")
	end

	it 'answers with about a minute ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_minute_in_millis, 0)).to eql("about a minute ago")
	end

	it 'answers with minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_minute_in_millis * 2, 0)).to eql("minutes ago")
	end

	it 'answers with minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_minute_in_millis * 5, 0)).to eql("minutes ago")
	end

	it 'answers with about 10 minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_minute_in_millis * 10, 0)).to eql("about 10 minutes ago")
	end

	it 'answers with about 15 minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_minute_in_millis * 15, 0)).to eql("about 15 minutes ago")
	end

	it 'answers with about 20 minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_minute_in_millis * 20, 0)).to eql("about 20 minutes ago")
	end

	it 'answers with about 25 minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_minute_in_millis * 25, 0)).to eql("about 25 minutes ago")
	end

	it 'answers with about half an hour ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_minute_in_millis * 30, 0)).to eql("about half an hour ago")
	end

	it 'answers with about 45 minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_minute_in_millis * 45, 0)).to eql("about 45 minutes ago")
	end

	it 'answers with about an hour ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_hour_in_millis, 0)).to eql("about an hour ago")
	end

	it 'answers with a couple of hours ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_hour_in_millis * 2, 0)).to eql("a couple of hours ago")
	end

	it 'answers with a few hours ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_hour_in_millis * 3, 0)).to eql("a few hours ago")
	end

	it 'answers with about 12 hours ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_hour_in_millis * 12, 0)).to eql("about 12 hours ago")
	end

	it 'answers with about 18 hours ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_hour_in_millis * 18, 0)).to eql("about 18 hours ago")
	end

	it 'answers with yesterday' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_day_in_millis, 0)).to eql("yesterday")
	end

	it 'answers with couple of days ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_day_in_millis * 2, 0)).to eql("a couple of days ago")
	end

	it 'answers with days ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_day_in_millis * 3, 0)).to eql("days ago")
	end

	it 'answers with about a week ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_week_in_millis, 0)).to eql("about a week ago")
	end

	it 'answers with a couple of weeks ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_week_in_millis * 2, 0)).to eql("a couple of weeks ago")
	end

	it 'answers with weeks ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_week_in_millis * 3, 0)).to eql("weeks ago")
	end

	it 'answers with months ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_month_in_millis * 2, 0)).to eql("months ago")
	end

	it 'answers with about a year ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_year_in_millis, 0)).to eql("about a year ago")
	end

	it 'answers with a couple of years ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_year_in_millis * 2, 0)).to eql("a couple of years ago")
	end

	it 'answers with years ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(@one_year_in_millis * 3, 0)).to eql("years ago")
	end
	
	#########################################################
	
	it 'answers with in less than a minute' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, 5)).to eql("in less than a minute")
	end	
	
	it 'answers with in about a minute' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_minute_in_millis)).to eql("in about a minute")
	end
	
	it 'answers with in a few minutes' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_minute_in_millis * 2)).to eql("in a few minutes")
	end
	
	
	
	
	
	
	
	
	it 'answers with in a few minutes' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_minute_in_millis * 5)).to eql("in a few minutes")
	end

	it 'answers with in about 10 minutes' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_minute_in_millis * 10)).to eql("in about 10 minutes")
	end

	it 'answers with in about 15 minutes' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_minute_in_millis * 15)).to eql("in about 15 minutes")
	end

	it 'answers with in about 20 minutes' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_minute_in_millis * 20)).to eql("in about 20 minutes")
	end

	it 'answers with in about 25 minutes' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_minute_in_millis * 25)).to eql("in about 25 minutes")
	end

	it 'answers with in about half an hour' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_minute_in_millis * 30)).to eql("in about half an hour")
	end

	it 'answers with in about 45 minutes' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_minute_in_millis * 45)).to eql("in about 45 minutes")
	end

	it 'answers with in about an hour' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_hour_in_millis)).to eql("in about an hour")
	end

	it 'answers with in a couple of hours' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_hour_in_millis * 2)).to eql("in a couple of hours")
	end

	it 'answers with in a few hours' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_hour_in_millis * 3)).to eql("in a few hours")
	end

	it 'answers with in about 12 hours' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_hour_in_millis * 12)).to eql("in about 12 hours")
	end

	it 'answers with in about 18 hours' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_hour_in_millis * 18)).to eql("in about 18 hours")
	end

	it 'answers with tomorrow' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_day_in_millis)).to eql("tomorrow")
	end

	it 'answers with in couple of days' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_day_in_millis * 2)).to eql("in a couple of days")
	end

	it 'answers with in a few days' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_day_in_millis * 3)).to eql("in a few days")
	end

	it 'answers with in about a week' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_week_in_millis)).to eql("in about a week")
	end

	it 'answers with in a couple of weeks' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_week_in_millis * 2)).to eql("in a couple of weeks")
	end

	it 'answers with in a few weeks' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_week_in_millis * 3)).to eql("in a few weeks")
	end

	it 'answers with in a few months' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_month_in_millis * 2)).to eql("in a few months")
	end

	it 'answers with in about a year' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_year_in_millis)).to eql("in about a year")
	end

	it 'answers with in a couple of years' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_year_in_millis * 2)).to eql("in a couple of years")
	end

	it 'answers with years from now' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(0, @one_year_in_millis * 3)).to eql("years from now")
	end
end
