class CreateExaminationRooms < ActiveRecord::Migration
  
  def change
    
    create_table :examinationrooms , :null => false do |t|
      t.integer :room_id, :null => false
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
