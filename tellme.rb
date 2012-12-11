#!/usr/bin/env ruby 

require "rubygems"
require "bundler/setup"

require "twilio-ruby"
require "open-uri"

# are we connected to the internet?
# if so, do nothing and leave.  

# if not, let's figure out how long we're going to wait

# then, when we're connected to the internet

# send a text message via Twilio.




# --- twilio settings.  put yours here ---
# put your own credentials here in this file you copied over
require_relative 'twilio_secrets'

# set up a client to talk to the Twilio REST API, just like the
# twilio docs tell me to do
@client = Twilio::REST::Client.new account_sid, auth_token

# rename twilio_secrets to contact information

# send an sms
@client.account.sms.messages.create(
  :from => '+16198081057',
  :to => '+16198081057',
  :body => 'Hey there!'
)
