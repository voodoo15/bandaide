class Musician < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :position
  has_many :bands
  has_many :members

  validates :first_name, :last_name, :address, :city, :postal_code, presence:  true
  validates_inclusion_of :province, in: %w(AB BC SK MB ON QC NB NS PE NL NT YT NU)
  validates :postal_code, length: { is: 6 }
end
