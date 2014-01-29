class Location < ActiveRecord::Base
  has_many :activities, through: :airports
  has_many :airports
end
