Feature: User can manually edit proctor
  As a user
  So that I can manage proctor's profile
  I want to edit or delete proctor's informations in database

Background: proctor have been added to database

  Given the following proctor exist:
  | proctor_id   | firstname | lastname     |  position   | procroom_id |
  | 1            | Mook      | Chew         |  Professor  | 1           |
  | 2            | Mind      | Lovely       |  Professor  | 2           |
  | 3            | Dew       | Jane         |  Officer    | 3           |
  | 4            | Ice       | Papit        |  Professor  | 4           |
  | 5            | Prim      | Plp          |  Officer    | 5           |
   
  And I am on the Proctor Management Module home page  

#Happy Path  
Scenario: User can edit proctor in database
    Given I am on the Proctor Management Module home page
    When I follow "Details about Mook"
    Then I should be on the Edit Existing Proctor page
    When I fill in "Firstname" from "Mook" to "Mookravee"
    And I press "Update Proctor Info"
    Then I should be on the Proctor Management Module home page
    And I should see "Mookravee"
    
#Sad Path
Scenario: User can not edit proctor in database
    Given I am on the Proctor Management Module home page
    When I follow "Details" on "Mook"
    Then I should be on the Edit Existing Proctor page
    When I fill in "Firstname" from "Mook" to ""
    And I press "Update Proctor Info"
    Then I should be on the Proctor Management Module home page
    And I should see "Mook"