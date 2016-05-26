class Skill < ActiveRecord::Base
  belongs_to :musician
  belongs_to :position

  validates_uniqueness_of :musician_id, :scope => "position_id"

  def display_level
    if self.level == 1
      return "Beginner"
    elsif self.level == 2
      return "Intermediate"
    elsif self.level == 3
      return "Advanced"
    end
  end
end
