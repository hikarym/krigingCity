class School < ApplicationRecord::Base

  #Associations
  has_many   :qualifications
end
