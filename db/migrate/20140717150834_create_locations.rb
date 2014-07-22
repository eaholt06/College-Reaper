class CreateLocations < ActiveRecord::Migration
  def up
    create_table :locations do |t|
      # Building name
      t.text :name, null :false, default: ''

      # GPS coordinates, using RGeo and PostGIS
      t.point :latlong, :geographic => true

      # Street address components
      t.text :street1, null :false, default: ''
      t.text :street2
      t.text :city, null :false, default: ''
      t.text :state, null :false, default: ''
      t.text :zip, null :false, default: ''

      # Metadata field
      t.timestamps
    end

    # Spatial index on the coordinates
    add_index :locations, :latlong, :spatial => true
  end

  def down
    remove_index :locations, 'index_on_location_location'
    drop_table :locations
  end
end
