class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :photo
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
