class Approval < ActiveRecord::Base
  belongs_to :musician
  belongs_to :member
end
