class ChangeDateFormatInEvents < ActiveRecord::Migration
  def up
    change_column :events, :datetime, :time
    change_column :events, :duration, :time
    rename_column :events, :datetime, :starttime
    rename_column :events, :duration, :endtime
  end

  def down
    rename_column :events, :starttime, :datetime
    rename_column :events, :endttime, :duration
    change_column :events, :datetime, :datetime
    change_column :events, :duration, :integer
  end
end
