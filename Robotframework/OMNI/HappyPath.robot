*** Settings ***
Suite Setup       Headless    Chrome
Suite Teardown    Close All Browsers
Test Teardown     Close All Browsers
Library           Selenium2Library
Library           Dialogs
Resource          Keyword_OMNI.robot

*** Test Cases ***
Scenario 1: Create Group, Group Plan, Memberships
    Given I Login to OMNI
    And I Click Group Setup
    And I Click New
    And I Populate Group Tab
    And I Populate Contacts Tab
    And I Populate Address Tab


