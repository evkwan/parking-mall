class CreateMalls < ActiveRecord::Migration
  def change
    create_table :malls do |t|
      t.string :name
      t.string :location
      t.string :description
      t.integer :parking_bays_num

      t.timestamps
    end
  end
end
