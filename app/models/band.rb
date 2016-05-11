class Band < ActiveRecord::Base
  belongs_to :leader, class_name: 'Musician', foreign_key: :musician_id
  belongs_to :genre
  has_many :members
  has_many :musicians, through: :members

  accepts_nested_attributes_for :members, reject_if: :all_blank, allow_destroy: true
  validates_associated :genre, :leader
end
