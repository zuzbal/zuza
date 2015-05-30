class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :transport_type
      t.text :description
      t.datetime :start_at
      t.datetime :end_at
      t.string :photo_url

      t.timestamps
    end
  end
end
