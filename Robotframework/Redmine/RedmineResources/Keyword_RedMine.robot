*** Settings ***
Documentation    Suite description

*** Keywords ***
I Login to RedMine
    Set Selenium Speed    0.5
    Open Browser    http://redmine.haelthtech.com/login    chrome
    Maximize Browser Window
    Input Text    //input[@id='username']    ayesha.isaguirre@haelthtech.com
    Input Password    //input[@id='password']    C!nd3r3LL@03
    Click Button    //input[@id='login-submit']
    Page Should Contain Element    //div[@id='top-menu']

I Click to Jump to a Project
    Set Selenium Speed    0.5
    Click Element    //span[@class='drdn-trigger']

I Click PCPH Production
    Set Selenium Speed    0.5
    #Select From List By Value    //*[@id="project-jump"]/div/div[2]/a[10]/span    PCPH Production
    #Select From List By Value    //span[contains(text(),'PCPH Production')]    PCPH Production
    #Select From List By Label    //span[@class='drdn-trigger']    PCPH Production
    #Select From List By Index    //span[@class='drdn-trigger']    9
    Click Element    //span[contains(text(),'PCPH Production')]

I Click Issues
    Set Selenium Speed    0.5
    Click Element    //a[contains(text(),'Issues')]

I Click CSV
    Set Selenium Speed    0.5
    Click Element    //a[@class='csv']

I Click Export
    Set Selenium Speed    0.5
    Click Button    //*[@id="csv-export-form"]/p[3]/input[1]