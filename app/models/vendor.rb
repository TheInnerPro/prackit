class Vendor < ActiveRecord::Base
  has_and_belongs_to_many :v_types
end
