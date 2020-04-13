class CreateCubes < ActiveRecord::Migration[6.0]
  def change
    create_table :cubes do |t|
      t.string :cube_type
      
    end
  end
end
