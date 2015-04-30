
Given /the following examinationroom exist/ do |more_examinationrooms_table|
  more_examinationrooms_table.hashes.each do |examinationroom|
    
    Examinationroom.create!(examinationroom)
  end
end

Given /the following proctor exist/ do |proctors_table|
  proctors_table.hashes.each do |proctor|
    
   Proctor.create!(proctor)
  end
end


