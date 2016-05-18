class Member < ActiveRecord::Base
  belongs_to :position
  belongs_to :band
  belongs_to :musician
  has_many :approvals

  validates :position, :band, presence: true

  validates_associated :position, :band

  def vacant?
    return self.musician_id == nil
  end
end
