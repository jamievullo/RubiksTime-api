class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.float :cube_time
      t.integer :cube_id
      t.integer :user_id
    end
  end
end
