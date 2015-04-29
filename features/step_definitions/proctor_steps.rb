
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


When /^(?:|I )change in "([^"]*)" with "([^"]*)"$/ do |firstname, value|
  fill_in 'firstname', with: 'value'
end


When /^I expect to click "([^"]*)" on a confirmation box saying "([^"]*)"$/ do |option, message|
  retval = (option == 'OK') ? 'true' : 'false'
  page.evaluate_script("window.confirm = function (msg) {
    document.cookie = msg
    return #{retval}
  }")
  @expected_message = message.gsub("\\n", "\n")
end
 
When /^the confirmation box should have been displayed$/ do
  assert page.evaluate_script('document.cookie').include?(@expected_message),
         "Expected confirm box with message: '#{@expected_message}'" +
         "                              got: '#{page.evaluate_script('document.cookie')}'"
end

When /^"([^\"]*)" should have a confirmation saying "([^\"]*)"$/ do |locator, message|
  el = find_button(locator) || find_link(locator)
  el['data-confirm'].should eql(message.gsub("\\n", "\n"))
end

When(/^I fill in "(.*?)" from "(.*?)" to "(.*?)"$/) do |field, old, new|
  fill_in(field, :with => new)
end
