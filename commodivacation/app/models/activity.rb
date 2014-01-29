class Activity < ActiveRecord::Base
  has_many :locations, through: :airports
  has_many :airports
end
