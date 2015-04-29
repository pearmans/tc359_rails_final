class User < ActiveRecord::Base
  has_secure_password
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_uniqueness_of :email
  validates :password, presence: true
  validates :password_confirmation, presence: true
end
