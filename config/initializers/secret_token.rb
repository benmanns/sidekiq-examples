# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
SidekiqExamples::Application.config.secret_key_base = 'c381ced25fca81b2c581a2e6fd8f9de69700507c9fecb6f9fb129eeb4e9a26c03f426d13ae93137f187f57ed5d93f692e0bad0e88e645699e6b3be66135b77b5'
