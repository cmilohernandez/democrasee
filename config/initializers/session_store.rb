# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_democrasee_session',
  :secret      => '0eb7c0a51a9dd8d6e95b785381c96b63de273dd90435f162dd4aba3e69ae5591a7965830b4340982dec6ce59588067ce9e90b0597efe298f1206e3397b45f4a4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
