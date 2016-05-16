class Musician < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :skills
  has_many :owned_bands, class_name: "Band"
  has_many :members
  has_many :bands, through: :members
  has_many :positions, through: :skills

  validates :firstname, :lastname, :address, :city, :postalcode, presence:  true
  validates_inclusion_of :province, in: %w(AB BC SK MB ON QC NB NS PE NL NT YT NU)
  validates :postalcode, length: { is: 7 },
            format: {with: /[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]/,
            message: "Must be in standard format 'A1B 2C3'"}

  geocoded_by :full_street_address
  after_validation :geocode, :reverse_geocode

  mount_uploader :avatar, AvatarUploader

  def full_street_address
    "#{address}, #{city}, #{province}, #{postalcode}, Canada"
  end

  def display_distance_to(other_musician)
    self.distance_to(other_musician, :km).round(2)
  end

  def skilled_enough?(position)
    return self.skills.where(position_id: position) > 0 ? true : false
  end

end
