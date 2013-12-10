class Step < ActiveRecord::Base
  belongs_to :technique
  belongs_to :form
  belongs_to :pattern
end
