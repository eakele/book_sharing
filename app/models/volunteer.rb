class Volunteer < ActiveRecord::Base
  belongs_to :user
  validates :destination_country, :presence => true
  validates :destination_city, :presence => true
  validates :destination_province, :presence => true
end
