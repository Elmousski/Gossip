class User < ApplicationRecord
  belongs_to :citie, optional: true
  has_many :gossips
end
