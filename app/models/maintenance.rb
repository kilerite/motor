

class Maintenance < ApplicationRecord
  belongs_to :engine
  belongs_to :city
  has_and_belongs_to_many :materials
end
