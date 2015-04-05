class CreateProctors < ActiveRecord::Migration
  def up
    create_table :proctors do |t|
      t.integer :proctor_id, :primary_key,:auto_increment => 1, :null => false
      t.string :firstname
      t.string :lastname
      t.string :position

      t.references :examinationrooms

      t.timestamps
    end
    add_index :proctors, :room_id
  end

  def down
     drop_table :proctors
  end
end
