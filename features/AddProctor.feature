Feature: User can manually add proctor
  As a user
  So that I can add new proctor 
  I want to add new proctor to examinationroom

Background: proctor have been added to database

  Given the following examinationroom exist:
  | room_id   | room_name | date_time    |
  | 1         | one       | 25-Nov-1992  |
  | 2         | two       | 26-Nov-1992  |
  | 3         | three     | 27-Nov-1992  |
  | 4         | four      | 25-Nov-1992  |
  | 5         | five      | 25-Nov-1992  |
  And I am on the Proctor Management Module home page
  
#Happy Path
Scenario: can add a proctor
  Given I am on the Proctor Management Module home page
  When I follow "Add Proctor"
  Then I should be on the Create Add a Proctor page
  When I fill in "Firstname" with "Mook"
  And I fill in "Lastname" with "Chew"
  And I select "Professor" from "Position"
  And I press "Add"
  Then I should be on the Proctor Management Module home page
  And I should see "Mook"
  
#Sad Path
Scenario: can't add a proctor
  Given I am on the Proctor Management Module home page
  When I follow "Add Proctor"
  Then I should be on the Create Add a Proctor page
  When I fill in "Firstname" with "Mook"
  And I fill in "Lastname" with "Chew"
  And I select "Professor" from "Position"
  And I press "Add"
  Then I should be on the Proctor Management Module home page
  And I should not see "Mook"
    
    
