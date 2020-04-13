class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.float :record
      t.integer :cube_id
      t.integer :user_id
    end
  end
end
