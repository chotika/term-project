class CreateProctors < ActiveRecord::Migration
  def change
    create_table :proctors do |t|
      t.integer :proctor_id, :primary_key,:auto_increment => 1, :null => false
      t.string :firstname
      t.string :lastname
      t.string :position
      t.integer :proctor_id
      
     # t.belongs_to :examinationroom , index: true 

      t.timestamps
    end
    #add_index :proctors, :room_id
  end

  def down
     drop_table :proctors
  end
end
