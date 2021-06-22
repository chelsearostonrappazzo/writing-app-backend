class Party < ApplicationRecord
  has_many :party_members
  has_many :users, through: :party_members
end
