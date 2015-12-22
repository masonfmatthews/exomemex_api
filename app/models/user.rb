class User < ActiveRecord::Base
  has_many :clips
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true

  before_create :generate_token

  def generate_token
    self.token = SecureRandom.hex
  end
end
