class CreateProctors < ActiveRecord::Migration
  def change
    create_table :proctors , :id => false do |t|
      t.integer :proctor_id,  :null => false
      t.string :firstname
      t.string :lastname
      t.string :position
      t.integer :room_name
      
     # t.belongs_to :examinationroom , index: true 

      t.timestamps
    end
    #add_index :proctors, :room_id
  end

  def down
     drop_table :proctors
  end
end
