class Position < ActiveRecord::Base
  has_one :member
  has_many :musicians, through: :skills

  validates :description, presence: true
end
