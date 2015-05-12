class User < ActiveRecord::Base
  has_many :posts
  accepts_nested_attributes_for :posts

  has_secure_password
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_uniqueness_of :email
  validates :password, presence: true
  validates :password_confirmation, presence: true
end
