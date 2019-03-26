*** Settings ***
Suite Teardown    Close All Browsers
Test Teardown     Close All Browsers
Library           Selenium2Library
Library           Dialogs
Resource          RedmineResources/Keyword_RedMine.robot

*** Test Cases ***
Scenario: Login Redmine
    Given I Login to RedMine
    When I Click to Jump to a Project
    And I Click PCPH Production
    And I Click Issues
    And I Click CSV
    Then I Click Export


