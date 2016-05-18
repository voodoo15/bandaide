class Approval < ActiveRecord::Base
  belongs_to :musicians
  belongs_to :members
end
