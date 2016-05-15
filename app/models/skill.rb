class Skill < ActiveRecord::Base
  belongs_to :musician
  belongs_to :position

  validates_uniqueness_of :musician_id, :scope => "position_id", message: "Dude, you already picked that skill!"
end
