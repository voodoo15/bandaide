class Position < ActiveRecord::Base
  has_one :member
  has_many :musicians, through: :skills
end
