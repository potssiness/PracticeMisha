*** Settings ***
Documentation    Suite description

*** Keywords ***

I Login to OMNI
    Set Selenium Speed    0.5
    Open Browser    http://pcph-test.haelthtech.com/omni/    chrome
    Maximize Browser Window
    Input Text    //input[@id='name']    ayesha
    Input Password    //input[@id='pwd']    salus123
    Click Element    //a[@id='submit']
    Page Should Contain Element    //*[@id="logo"]/table/tbody/tr[1]/td[1]/img

I Click Group Setup
    Set Selenium Speed    0.5
    Click Element    (//span[@class='ThemeOmniMainFolderText'])[1]
    Click Element    (//td[@class='ThemeOmniMenuItemText'])[1]
    Page Should Contain Element    //table[@class='content-box-label']/tbody/tr/td
    #Select From List By Index    //span[@class='ThemeOmniMainFolderText']    1
    #Select From List By Index    //td[@class='ThemeOmniMenuItemText']    1

I Click New
    Set Selenium Speed    0.5
    Click Element    (//a[@class='button'])[2]

I Populate Group Tab
    Set Selenium Speed    0.5
    #Select Underwriter = PCII
    Click Element    //select[@id='body:groupsFm:GroupsForm:underwriter']
    Click Element    (//select[@id='body:groupsFm:GroupsForm:underwriter'])/option[3]
    #Select Policy Type = Health Insurance
    Click Element    //select[@id='body:groupsFm:GroupsForm:policyType']
    Click Element    (//select[@id='body:groupsFm:GroupsForm:policyType'])/option[2]    #Health Insurance
    #Select Billing Frequency = Annual
    Click Element    //select[@id='body:groupsFm:GroupsForm:billingFrequency']
    Click Element    (//select[@id='body:groupsFm:GroupsForm:billingFrequency'])/option[2]
    #Select Branch Office = Head Office
    Click Element    //select[@id='body:groupsFm:GroupsForm:salesRegion']
    Click Element    (//select[@id='body:groupsFm:GroupsForm:salesRegion'])/option[2]
    #Select Administrator = Pacific Cross Philippines
    Click Element    //select[@id='body:groupsFm:GroupsForm:administrator']
    Click Element    (//select[@id='body:groupsFm:GroupsForm:administrator'])/option[2]
    #Select Placeholder Type = Group
    Click Element    //select[@id='body:groupsFm:GroupsForm:groupTypeCode']
    Click Element    (//select[@id='body:groupsFm:GroupsForm:groupTypeCode'])/option[2]
    #Select Tax Code = Taxable
    Click Element    //select[@id='body:groupsFm:GroupsForm:taxCode']
    Click Element    (//select[@id='body:groupsFm:GroupsForm:taxCode'])/option[3]
    #Select Acces Fee = No
    Click Element    //select[@id='body:groupsFm:GroupsForm:membershipFeeFlag']
    Click Element    (//select[@id='body:groupsFm:GroupsForm:membershipFeeFlag'])/option[3]
    #Input Text Fields
    Input Text    //input[@id='body:groupsFm:GroupsForm:name']    Test Group 1
    Input Text    //input[@id='body:groupsFm:GroupsForm:policyHolder']    Test Group 1
    #Select Start Date
    Input Text    //td[@id='body:groupsFm:GroupsForm:j_id_jsp_2139118792_92j_id_0']/nobr/input[@id='body:groupsFm:GroupsForm:groupStartDate']    01-01-2019
    #Click Save
    Click Element    //a[@id='body:groupsFm:saveGroupBtn']
    #Validate
    Page Should Contain Element    //span[@id='body:code']

I Populate Contacts Tab
    Set Selenium Speed    0.5
    #Click Contacts Tab
    Click Element    //td[@id='body:groupsContactTab_headerCell']/input
    Page Should Contain Element    //td[@id='body:groupsContactTab_headerCell']/input
    #Input Text Fields
    Input Text    //input[@id='body:groupsContactTab:groupsContactFm:keyContactForm:lastName']    Jackson
    Input Text    //input[@id='body:groupsContactTab:groupsContactFm:keyContactForm:firstName']    Poseidon
    #Click Save
    Click Element    //a[@id='body:groupsContactTab:groupsContactFm:contacsSaveBtn']

I Populate Address Tab
    Set Selenium Speed    0.5
    #Click Address Tab
    Click Element    //td[@id='body:groupsAddressTab_headerCell']/input
    Page Should Contain Element    //td[@id='body:groupsAddressTab:groupsAddressFm:j_id_jsp_1627606160_9j_id_0']/span
    #Input Text Fields


I Create Group Plan

I Populate Billing Details Tab

I Populate Product Option Tab

I Populate Advisors Tab

I Activate Group Plan

I Activate Group

I Create Membership