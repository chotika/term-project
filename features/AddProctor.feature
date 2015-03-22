Feature: User can manually add proctor
Scenario: Add a proctor
  Given I am on the Proctor Management Module home page
  When I follow "Add Proctor"
  Then I should be on the Create Add a Proctor page
  When I fill in "Firstname" with "Mook"
  And I fill in "Lastname" with "Chew"
  And I select "Professor" from "Position"
  And I press "Add"
  Then I should be on the Proctor Management Module home page
  And I should see "Mook"
    
    
#Feature: Can add proctor to examinationroom by autometically
Scenario: Add proctor to examinationroom
  Given I am on the Create Add a Proctor page
  When I press "Add"
  Then I should be on the Proctor Management Module home page
  And I should see "Mook"