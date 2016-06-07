class Band < ActiveRecord::Base
  belongs_to :leader, class_name: 'Musician', foreign_key: :musician_id
  belongs_to :genre
  has_many :members
  has_many :musicians, through: :members
  has_many :approvals, through: :members

  validates_associated :genre, :leader

  geocoded_by :full_street_address
  after_validation :geocode, :reverse_geocode


  mount_uploader :poster, PosterUploader

  def genre_desc
    return self.genre.description
  end

  def full_street_address
    "#{self.leader.address}, #{self.leader.city}, #{self.leader.province}, #{self.leader.postalcode}, Canada"
  end

  def how_full
    if self.members.count() > 0
      return (self.members.where.not(musician_id: nil).count() / self.members.count().to_f * 100).ceil 
    else
      return 0
    end
  end

  def self.how_full
    vacant_bands = []
    Band.all.each do |b|
      if b.how_full < 100
        vacant_bands << b
      end
    end
    return vacant_bands

  end
end
