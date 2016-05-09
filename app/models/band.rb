class Band < ActiveRecord::Base
  belongs_to :leader, class_name: 'Musician', foreign_key: :musician_id
  belongs_to :genre
  has_many :members
  has_many :contracts, through: :members

  accepts_nested_attributes_for :members, reject_if: :all_blank
  validates_associated :genre, :musician
end
