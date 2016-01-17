class AddClosingTimeToMalls < ActiveRecord::Migration
  def change
    add_column :malls, :closing_time, :string
  end
end
