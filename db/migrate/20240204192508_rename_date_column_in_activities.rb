class RenameDateColumnInActivities < ActiveRecord::Migration[7.1]
  def change
    remove_column :activities, :date_and_time if column_exists?(:activities, :date_and_time)
    rename_column :activities, :date, :date_and_time
  end
end
