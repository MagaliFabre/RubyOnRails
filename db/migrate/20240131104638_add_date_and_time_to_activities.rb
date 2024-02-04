class AddDateAndTimeToActivities < ActiveRecord::Migration[7.1]
  def change
    add_column :activities, :date_and_time, :datetime
  end
end
