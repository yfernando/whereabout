class CreatePoi < ActiveRecord::Migration
  def change
    create_table :pois do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.text   :description
    end
  end
end
