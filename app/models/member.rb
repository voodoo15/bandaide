class Member < ActiveRecord::Base
  belongs_to :position
  belongs_to :band
  belongs_to :musician

  validates :position, :band, :musician, presence: true

  validates_associated :position, :band, :musician
end
