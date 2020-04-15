class AddTimeStampsToRecord < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :created_at, :datetime
    add_column :records, :updated_at, :datetime
  end
end
