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

end
