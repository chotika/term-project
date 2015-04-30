class Examinationroom < ActiveRecord::Base
     #has_many :proctors
     attr_accessible :room_id,:room_name,:date_time,:number_of_proctor,:set_code,:search
     #auto_increment
     #self.primary_key = :room_id 
     before_create :set_code
     def set_code
          max_code = Examinationroom.maximum(:room_id)
          self.room_id = max_code.to_i + 1 
     end
     def self.search(search)
          key = "%#{search}%"
       if search
          where('room_name LIKE ?', key)
       else
          all
       end
     end
     #def self.search(search)
     #  search_condition = "%" + search + "%"
     #  where(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
     #end
     
     #def self.search(search)
     #  if search
     #     find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
     #  else
     #     find(:all)
     #  end
     #end
end   
