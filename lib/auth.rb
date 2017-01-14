require 'jwt'

class Auth
  def self.issue(payload)
    JWT.encode payload, Rails.application.secrets[:secret_key_base], 'HS256'
  end

  def self.decode(token)
    JWT.decode(token, Rails.application.secrets[:secret_key_base], true, { :algorithm => 'HS256' })
  end
end

# class Auth
#   ALGORITHM = 'HS256'

#   def self.issue(payload)
#     JWT.encode(
#       payload,
#       auth_secret,
#       ALGORITHM)
#   end

#   def self.decode(token)
#     JWT.decode(token, 
#       auth_secret, 
#       true, 
#       { algorithm: ALGORITHM }).first
#   end

#   def self.auth_secret
#     # ENV["AUTH_SECRET"]
#     "\x85\x11\xFA\xEF\xF2A\x11\xC7\x90\x9C!{\xDC\x11W\xFB\x93\xE5\xA3\xCD\xE3\xC2\x9E#7\xC4\xCDa\xCF\xC9/\xEA"
#   end

# end  
