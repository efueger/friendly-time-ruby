test change again

# FriendlyTime

[![Build Status](https://travis-ci.org/bellabling/friendly-time-ruby.svg?branch=master)](https://travis-ci.org/bellabling/friendly-time-ruby)
[![Code Climate](https://codeclimate.com/github/bellabling/friendly-time-ruby/badges/gpa.svg)](https://codeclimate.com/github/bellabling/friendly-time-ruby)
[![Test Coverage](https://codeclimate.com/github/bellabling/friendly-time-ruby/badges/coverage.svg)](https://codeclimate.com/github/bellabling/friendly-time-ruby/coverage)
[![Issue Count](https://codeclimate.com/github/bellabling/friendly-time-ruby/badges/issue_count.svg)](https://codeclimate.com/github/bellabling/friendly-time-ruby)
[![license](https://img.shields.io/github/license/bellabling/friendly-time-ruby.svg)]()
[![Gem](https://img.shields.io/gem/v/friendly_time.svg)](https://rubygems.org/gems/friendly_time)
[![Gem](https://img.shields.io/gem/dt/friendly_time.svg)](https://rubygems.org/gems/friendly_time)

Provides casual time strings for events in the past. E.g. "about 10 minutes ago".

## Installation

    $ gem install friendly_time

## Usage

	friendly_time -t 1481033316000
	//outputs: seconds ago
	
	friendly_time -t 1481033316000 -f 14810333150
	//outputs: years from now

	
See also the unit tests.

## Development

	gem install bundler

Get the development dependencies

	bundle install
