class AddIndexToSchools < ActiveRecord::Migration[5.1]
  def change
    add_earthdistance_index :schools, lat: :latitude, lng: :longitude
  end
end
