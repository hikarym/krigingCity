class School < ApplicationRecord::Base

  #Associations
  has_many   :qualifications

      # Validations
  validates :latitude, :longitude, presence: true
  
  validates :latitude,  numericality: { greater_than_or_equal_to: -90,
                                        less_than_or_equal_to: 90 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180,
                                        less_than_or_equal_to: 180 }

  def self.search
    @schools = School.all
  end
end
