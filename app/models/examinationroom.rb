class Examinationroom < ActiveRecord::Base
     has_one :proctor
     attr_accessible :room_id,:room_name,:date_time,:number_of_proctor,:set_code,:primary_key
     #auto_increment
     self.primary_key = :room_id 
     before_create :set_code
     def set_code
          max_code = Examinationroom.maximum(:room_id)
          self.room_id = max_code.to_i + 1
     end
end   
