class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.belongs_to :location, index: true
      t.belongs_to :activity, index: true

      t.timestamps
    end
  end
end
