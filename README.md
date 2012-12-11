is-my-internet-back-yet
=======================

Internet service at my apartment (Time Warner *cough*) has been absurdly unreliable lately.  So, I leave and go do things, all while wondering if internet has come back at my apartment yet.  

This will send me a text message via Twilio when the internet is back.  


### Setup
Copy twilio_secrets.default.rb to twilio_secrets.rb.  Fill it in with your twilio credentials and your phone number information.

Change permissions to make tellme.rb executeable.  

Before you leave your broken internet, run it.  Go unto the the world, waiting for the text message.

Also, use Ruby 1.9.3
