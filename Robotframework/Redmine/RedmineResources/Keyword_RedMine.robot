*** Settings ***
Documentation    Suite description

*** Keywords ***
Open On Headless Browser
    [Arguments]    ${driver}    ${URL}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    test-type
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Go To    ${URL}
    Comment    Maximize Browser Window
    Comment    Maximize Browser Window

Headless
    [Arguments]    ${driver}    ${URL}    ${Username}=${None}    ${Password}=${None}
    Run Keyword If    '${driver}' == 'Firefox' or '${driver}' == 'firefox'    Firefox true headless    ${URL}
    ...    ELSE IF    '${driver}' == 'Chrome' or '${driver}' == 'chrome'    Open On Headless Browser    ${driver}    ${URL}
    ### Loggin in keyword
    Run Keyword If    '${Username}' != '${None}' and '${Password}' != '${None}'    If User Is Not Logged In    ${Username}    ${Password}

I Login to RedMine As Headless
    Set Selenium Speed    0.5
    Open Browser    http://redmine.haelthtech.com/login    headlesschrome
    Maximize Browser Window
    Input Text    //input[@id='username']    ayesha.isaguirre@haelthtech.com
    Input Password    //input[@id='password']    C!nd3r3LL@03
    Click Button    //input[@id='login-submit']
    Page Should Contain Element    //div[@id='top-menu']

I Login to Redmine with Username and Passwrod
    Input Text    //input[@id='username']    ayesha.isaguirre@haelthtech.com
    Input Password    //input[@id='password']    C!nd3r3LL@03
    Click Button    //input[@id='login-submit']
    Page Should Contain Element    //div[@id='top-menu']

I Login to RedMine
    Set Selenium Speed    0.5
    Open Browser    http://redmine.haelthtech.com/login    chrome
    Maximize Browser Window
    Input Text    //input[@id='username']    ayesha.isaguirre@haelthtech.com
    Input Password    //input[@id='password']    C!nd3r3LL@03
    Click Button    //input[@id='login-submit']
    Page Should Contain Element    //div[@id='top-menu']

I Click to Jump to a Project
    Set Selenium Speed    2
    Click Element    //span[@class='drdn-trigger']

I Click PCPH Production
    Set Selenium Speed    2
    #Select From List By Value    //*[@id="project-jump"]/div/div[2]/a[10]/span    PCPH Production
    #Select From List By Value    //span[contains(text(),'PCPH Production')]    PCPH Production
    #Select From List By Label    //span[@class='drdn-trigger']    PCPH Production
    #Select From List By Index    //span[@class='drdn-trigger']    9
    Click Element    //span[contains(text(),'PCPH Production')]

I Click Issues
    Set Selenium Speed    2
    Wait Until Keyword Succeeds    10    10    Click Element    //a[contains(text(),'Issues')]

I Click CSV
    Set Selenium Speed    2
    Click Element    //a[@class='csv']

I Click Export
    Set Selenium Speed    2
    Click Button    //*[@id="csv-export-form"]/p[3]/input[1]