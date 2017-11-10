class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table    :schools do |t|
      t.string      :identifier
      t.decimal     :longitude
      t.decimal     :latitude
      t.string      :code
      t.string      :nomeesc
      t.timestamps
    end
  end
end
