class CreateExaminationRooms < ActiveRecord::Migration
  def up
    create_table :examinationrooms do |t|
      t.integer 'room_id'
      t.string 'room_name'
      t.datetime 'date_time'
      t.integer 'number_of_proctor'
      t.timestamps
    end  
  end
  def down
    drop_table :examinationrooms
  end
end