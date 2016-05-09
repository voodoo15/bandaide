class Genre < ActiveRecord::Base
  has_many :bands
end
