class ChangeDateTypeInRenters < ActiveRecord::Migration
  def up
    change_column :renters, :start_date, :date
    change_column :renters, :end_date, :date
  end

  def down
    change_column :renters, :start_date, :date
    change_column :renters, :end_date, :date
  end
end
