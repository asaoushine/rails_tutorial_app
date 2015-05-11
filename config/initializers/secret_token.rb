require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
  	# Use the existing token
  	File.read(token_file).chomp
  else
  	# Generate a new token store it in token_file.
  	token = SecureRandom.hex(64)
  	File.write(token_file, token)
  	token
  end
end

RailsTutorialApp::Application.config.secret_key_base = secure_token