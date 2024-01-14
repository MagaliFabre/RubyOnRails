class AddUserIdToActivities < ActiveRecord::Migration[7.1]
  def change
    add_column :activities, :user_id, :integer
  end
end
