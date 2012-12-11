#!/usr/bin/env ruby 

require "rubygems"
require "bundler/setup"
require "twilio-ruby"
require "open-uri"


# Checks for an internet connection
# Thanks, Stack Overflow
def internet_connection?
  begin
    true if open("http://www.google.com")
  rescue
    false
  end
end

# Consumes resources needlessly checking for internet connection
# ETA until computer crash?
while not internet_connection?
  puts "no internet connection"
end

# once there IS an internet connection, send a text message.  

# put your own credentials here in this file you copied over
require_relative 'twilio_secrets'

# set up a client to talk to the Twilio REST API, just like the
# twilio docs tell me to do
@client = Twilio::REST::Client.new $account_sid, $auth_token

# send an sms
@client.account.sms.messages.create(
  :from => $from_number,
  :to => $to_number,
  :body => 'Huzzah!  Internet!'
)
