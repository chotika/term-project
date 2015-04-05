# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Seed the RottenPotatoes DB with some movies.


more_examinationrooms= [{:room_id => :set_code , :room_name => 'one', :date_time => '25-Nov-1992', :number_of_proctor => 2},
                         {:room_id => :set_code , :room_name => 'two', :date_time => '26-Nov-1992', :number_of_proctor => 2},
                         {:room_id => :set_code  , :room_name => 'three', :date_time => '27-Nov-1992', :number_of_proctor => 2},
                         {:room_id => :set_code  , :room_name => 'four', :date_time => '25-Nov-1992', :number_of_proctor => 2},
                         {:room_id => :set_code , :room_name => 'five', :date_time => '25-Nov-1992', :number_of_proctor => 2}]
 
more_examinationrooms.each do |examinationroom|
  Examinationroom.create!(examinationroom)
end

    