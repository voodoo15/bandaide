class Musician < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :position
  has_many :bands
  has_many :members

  validates :firstname, :lastname, :address, :city, :postalcode, presence:  true
  validates_inclusion_of :province, in: %w(AB BC SK MB ON QC NB NS PE NL NT YT NU)
  validates :postalcode, length: { is: 7 },
            format: {with: /[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]/,
            message: "Must be in standard format 'A1B 2C3'"}

end
