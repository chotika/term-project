Feature: User can manually edit proctor
  As a user
  So that I can manage proctor's profile
  I want to edit proctor's informations in database

Background: proctor have been added to database

  Given the following proctor exist:
  | proctor_id   | firstname | lastname     |  position   | procroom_id   |
  | 1            | Mookravee | Chew         |  Professor  | 406           |
  | 2            | Mind      | Lovely       |  Professor  | 407           |
  | 3            | Dew       | Jane         |  Officer    | 408           |
  | 4            | Ice       | Papit        |  Professor  | 409           |
  | 5            | Prim      | Plp          |  Officer    | 410           |
   
  And I am on the Proctor Management Module home page 

#Happy Path
Scenario: User can edit proctor in database
    Given I am on the Proctor Management Module home page
    When I follow "Details about Mook"
    Then I should be on the Edit Existing Proctor page
    When I change in "Firstname" from "Mook" with "Mookravee"
    And I press "Update Proctor Info"
    Then I should be on the Proctor Management Module home page
    And I should see "Mookravee"

#Sad Path
Scenario: User can not edit proctor in database
    Given I am on the Proctor Management Module home page
    When I follow "Details about Mook"
    Then I should be on the Edit Existing Proctor page
    When I fill in "Firstname" with "Mookravee"
    And I press "Update Proctor Info"
    Then I should be on the Proctor Management Module home page
    And I should see "Mook"
    
  