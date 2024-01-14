# db/migrate/[timestamp]_create_activities.rb
class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.datetime :date
      t.text :comments
      t.integer :duration

      t.timestamps
    end
  end
end
