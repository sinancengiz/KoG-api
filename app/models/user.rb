class User < ApplicationRecord
    # encrypt password
  has_secure_password

  # Model associations
  has_and_belongs_to_many :games
  has_many :castles
  
  # Validations
  validates_presence_of :user_name, :email, :password_digest
  validates_uniqueness_of :user_name, :email
end
