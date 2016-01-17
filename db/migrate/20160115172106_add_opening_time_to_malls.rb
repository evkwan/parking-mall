class AddOpeningTimeToMalls < ActiveRecord::Migration
  def change
    add_column :malls, :opening_time, :string
  end
end
