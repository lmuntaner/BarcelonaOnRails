class Admin < ActiveRecord::Base
  has_secure_password
  validates :email, :password_digest, :session_token, presence: true

  after_initialize :ensure_session_token

  private
  def ensure_session_token
    self.session_token ||= create_token
  end

  def create_token
    SecureRandom.urlsafe_base64(16)
  end

end
