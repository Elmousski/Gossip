class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :gossips
end
