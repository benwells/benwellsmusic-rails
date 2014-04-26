# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# Benwellsmusic::Application.config.secret_key_base = '03fc5aafe59263ca7e250e3bb896691a562a7d8e06d9bb9ddfac8502e8d10f4d70681eb3132abd9749f37a9edf2a59b67d3cbeef1a57894a8a8a218d48be5708'
Benwellsmusic::Application.config.secret_key_base = if Rails.env.development? or Rails.env.test?
  ('x' * 30) # meets minimum requirement of 30 chars long
else
  ENV['SECRET_TOKEN']
end
