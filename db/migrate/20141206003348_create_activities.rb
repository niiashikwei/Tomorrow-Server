class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :min_team_size
      t.integer :max_team_size
      t.timestamps
    end
  end
end
