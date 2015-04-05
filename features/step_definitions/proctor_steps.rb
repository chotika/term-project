
Given /the following examinationroom exist/ do |more_examinationrooms_table|
  more_examinationrooms_table.hashes.each do |examinationroom|
    
    Examinationroom.create!(examinationroom)
  end
end

When(/^I fill in "(.*?)" from "(.*?)" to "(.*?)"$/) do |arg1, arg2, arg3|
  fill_in(arg1, :from => arg2, :to => arg3)
end

