class Approval < ActiveRecord::Base
  belongs_to :musician
  belongs_to :member
  has_one :band, through: :member
end
