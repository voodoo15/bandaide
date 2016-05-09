class Position < ActiveRecord::Base
  has_many :members
  has_many :musicians
end
