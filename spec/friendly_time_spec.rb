require 'spec_helper'

describe FriendlyTime do
    it 'has a version number' do
    expect(FriendlyTime::VERSION).not_to be nil
	end

	it 'answers with seconds ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(5, 0)).to eql("seconds ago")
	end

	it 'answers with about a minute ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(60, 0)).to eql("about a minute ago")
	end

	it 'answers with minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(120, 0)).to eql("minutes ago")
	end

	it 'answers with minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(300, 0)).to eql("minutes ago")
	end

	it 'answers with about 10 minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(600, 0)).to eql("about 10 minutes ago")
	end

	it 'answers with about 15 minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(900, 0)).to eql("about 15 minutes ago")
	end

	it 'answers with about 20 minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(1200, 0)).to eql("about 20 minutes ago")
	end

	it 'answers with about 25 minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(1500, 0)).to eql("about 25 minutes ago")
	end

	it 'answers with about half an hour ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(1800, 0)).to eql("about half an hour ago")
	end

	it 'answers with about 45 minutes ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(3600, 0)).to eql("about 45 minutes ago")
	end

	it 'answers with about an hour ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(7200, 0)).to eql("about an hour ago")
	end

	it 'answers with a couple of hours ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(10800, 0)).to eql("a couple of hours ago")
	end

	it 'answers with a few hours ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(43200, 0)).to eql("a few hours ago")
	end

	it 'answers with about 12 hours ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(64800, 0)).to eql("about 12 hours ago")
	end

	it 'answers with about 18 hours ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(86400, 0)).to eql("about 18 hours ago")
	end

	it 'answers with yesterday' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(172800, 0)).to eql("yesterday")
	end

	it 'answers with couple of days ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(259200, 0)).to eql("a couple of days ago")
	end

	it 'answers with days ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(604800, 0)).to eql("days ago")
	end

	it 'answers with about a week ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(1209600, 0)).to eql("about a week ago")
	end

	it 'answers with a couple of weeks ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(1814400, 0)).to eql("about a couple of weeks ago")
	end

	it 'answers with weeks ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(4838400, 0)).to eql("weeks ago")
	end

	it 'answers with months ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(29030400, 0)).to eql("months ago")
	end

	it 'answers with about a year ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(58060800, 0)).to eql("about a year ago")
	end

	it 'answers with a couple of years ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(87091200, 0)).to eql("a couple of years ago")
	end

	it 'answers with years ago' do
		expect(FriendlyTime::FriendlyTimeProvider.friendly_time(87091200 + 1, 0)).to eql("years ago")
	end
end
