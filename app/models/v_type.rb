class VType < ActiveRecord::Base
  has_and_belongs_to_many :vendors
end
