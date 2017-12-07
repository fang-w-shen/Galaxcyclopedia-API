class Message
  def self.not_found(record = 'record')
    "Sorry, #{record} Not Found."
  end

  def self.invalid_credentials
    'Invalid Credentials'
  end

  def self.invalid_token
    'Invalid Token'
  end

  def self.missing_token
    'Missing Token'
  end

  def self.unauthorized
    'Unauthorized Request'
  end

  def self.account_created
    'Account Created Successfully'
  end

  def self.successful_request
    'Request Received Successfully'
  end

  def self.account_not_created
    'Account Could Not Be Created'
  end

  def self.expired_token
    'Sorry, Your Token Has Expired. Please Login to Continue.'
  end
end