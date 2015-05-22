class Proctor < ActiveRecord::Base
     attr_accessible :firstname, :lastname, :position ,:proctor_id,:set_procid ,:procroom_id,:searchname
     #belongs_to :examinationroom
     before_create :set_procid
     #self.primary_key = :proctor_id
     def set_procid
          max_code = Proctor.maximum(:proctor_id) 
          room_code = Proctor.maximum(:proctor_id) 
          self.proctor_id = max_code.to_i + 1
          self.procroom_id = ((room_code.to_i ) % 5)+406
          
     end
     
     
     def self.searchname(search)
          key = "%#{search}%"
       if search
          where('firstname LIKE ? or lastname LIKE ?', key, key)
               
       else
          all
       end
     end
     
     validates :firstname, :presence => true #{ :message => "Registration name can't be blank" }
     validates :lastname, :presence => true #{ :message => "Registration name can't be blank" }
     validates :position, :presence => true # { :message => "Registration name can't be blank" }
end    
