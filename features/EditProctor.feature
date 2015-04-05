Feature: User can manually edit proctor
  As a user
  So that I can manage proctor's profile
  I want to edit or delete proctor's informations in database

Background: proctor have been added to database

  Given the following proctor exist:
  | proctor_id   | firstname | lastname     |  position   |
  | 1            | Mook      | Chew         |  Professor  |
  | 2            | Mind      | Lovely       |  Professor  |
  | 3            | Dew       | Jane         |  Officer    |
  | 4            | Ice       | Papit        |  Professor  |
  | 5            | Prim      | Plp          |  Officer    |
   
  And I am on the Proctor Management Module home page  

#happy path  
Scenario: User can edit proctor in database
    Given I am on the Proctor Management Module home page
    When I follow "Details" on "Mook"
    Then I should be on the Edit Existing Proctor page
    When I fill in "Firstname" from "Mook" to "Mookravee"
    And I press "Update Proctor Info"
    Then I should be on the Proctor Management Module home page
    And I should see "Mookravee"
    
#Sad path
Scenario: User can not edit proctor in database
    Given I am on the Proctor Management Module home page
    When I follow "Details" on "Mook"
    Then I should be on the Edit Existing Proctor page
    When I fill in "Firstname" from "Mook" to ""
    And I press "Update Proctor Info"
    Then I should be on the Proctor Management Module home page
    And I should see "Mook"