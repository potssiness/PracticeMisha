*** Settings ***
Suite Setup       Headless    Chrome    http://redmine.haelthtech.com/login
Suite Teardown    Close All Browsers
#Test Teardown     Close All Browsers
Library           Selenium2Library
Library           Dialogs
Resource          RedmineResources/Keyword_RedMine.robot

*** Test Cases ***
Scenario: Login Redmine
    #Given I Login to RedMine
    Given I Login to Redmine with Username and Passwrod

Scenario: Extract of PCPH Report
    When I Click to Jump to a Project
    And I Click PCPH Production
    And I Click Issues
    And I Click CSV
    Then I Click Export


