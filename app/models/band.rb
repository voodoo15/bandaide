class Band < ActiveRecord::Base
  belongs_to :leader, class_name: 'Musician', foreign_key: :musician_id
  belongs_to :genre
  has_many :members
  has_many :musicians, through: :members

  validates_associated :genre, :leader

  mount_uploader :poster, PosterUploader
end
