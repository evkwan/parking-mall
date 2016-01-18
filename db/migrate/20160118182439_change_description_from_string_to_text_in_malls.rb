class ChangeDescriptionFromStringToTextInMalls < ActiveRecord::Migration
  def up
    change_column :malls, :description, :text
  end

  def down
    change_column :malls, :description, :string
  end
end
