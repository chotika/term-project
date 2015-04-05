class Proctor < ActiveRecord::Base
     attr_accessible :firstname, :lastname, :position ,:proctor_id,:set_procid ,:primary_key
     belongs_to :examinationroom 
     before_create :set_procid
     self.primary_key = :proctor_id
     def set_procid
          max_code = Proctor.maximum(:proctor_id)
          self.proctor_id = max_code.to_i + 1
     end
     
     
    # validates :firstname, :presence => true #{ :message => "Registration name can't be blank" }
    # validates :lastname, :presence => true #{ :message => "Registration name can't be blank" }
    # validates :position, :presence => true  #{ :message => "Registration name can't be blank" }
     
     #proctor = Proctor.new(firstname: 'dewdew')
    # proctor.errors.full_messages
end    