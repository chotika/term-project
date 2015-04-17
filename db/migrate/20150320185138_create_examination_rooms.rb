class CreateExaminationRooms < ActiveRecord::Migration
  
  def change
    create_table :examinationrooms do |t|
      t.integer :room_id, :primary_key,:auto_increment => 1, :null => false
      t.string :room_name
      t.datetime :date_time
      t.integer :number_of_proctor
      t.timestamps
    end
  end
  def down
    drop_table :examinationrooms
  end
end
