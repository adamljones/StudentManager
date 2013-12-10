class Pattern < ActiveRecord::Base
  has_one :pattern_type
  has_many :steps
end
