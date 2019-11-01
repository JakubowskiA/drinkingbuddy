class User < ApplicationRecord
  has_many :drinks
  has_secure_password

  # Validations
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :name, presence: true
  validates :password, presence: true
end
