class CreateProctors < ActiveRecord::Migration
  def up
    create_table :proctors do |t|
      t.string 'firstname'
      t.string 'lastname'
      t.string 'position'
    end
  end
  def down
     drop_table :examinationrooms
  end
end
