class User < ApplicationRecord
  has_secure_password  
  validates :email, presence: true, uniqueness: true
  has_many :stories
  has_many :party_members
  has_many :parties, through: :party_members
end
