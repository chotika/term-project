Feature: User can manually delete proctor
  As a user
  So that I can delete proctor's informations
  I want to delete proctor's informations in database
  

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
Scenario: User can delete proctor in database
    Given I am on the Proctor Management Module home page
    When I follow "Details about Mook"
    Then I should be on the Edit Existing Proctor page
    When I press "Delete"
    Then I should be on the Proctor Management Module home page
    And I should not see "Mook" 
    
#Sad Path
Scenario: User cannot delete proctor in database
    Given I am on the Proctor Management Module home page
    When I follow "Details about Mook"
    Then I should be on the Edit Existing Proctor page
    When I press "Delete"
    Then I should be on the Proctor Management Module home page
    And I should see "Mook"
    