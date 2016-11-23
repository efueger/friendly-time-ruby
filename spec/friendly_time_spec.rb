require 'spec_helper'

describe FriendlyTime do
  it 'has a version number' do
    expect(FriendlyTime::VERSION).not_to be nil
  end

  it 'answers with seconds ago' do
    expect(FriendlyTime::FriendlyTimeProvider.friendly_time(5, 0)).to eql("seconds ago")
  end
end
