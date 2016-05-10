class Skill < ActiveRecord::Base
  belongs_to :musician
  belongs_to :position
end
