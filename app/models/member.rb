class Member < ActiveRecord::Base
  belongs_to :position
  belongs_to :band
  belongs_to :musician

  validates_associated :position, :band, :musician
end
