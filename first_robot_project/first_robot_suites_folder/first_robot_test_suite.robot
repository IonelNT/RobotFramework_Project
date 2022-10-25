*** Settings ***
Library    SeleniumLibrary
Suite Setup    Log    Inside Test Suite Setup    
Suite Teardown    Log    Inside Test Suite Teardown    
Test Setup    Log    Inside Test Setup    
Test Teardown    Log    Inside Test Teardown    


*** Test Cases ***
MyFistrTest
    BuiltIn.Log    Inside 1st test    

MySecondTest
    BuiltIn.Log    Inside 2nd test
    
MyFirstSeleniumTest 
     
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Click Button    Respinge tot
    Input Text    name=q    Ma dusei sa trec la Olt 
    Press Keys    name=q    ENTER
    #Click Button    name=btnK    
    Sleep    2     
    Close Browser
    Log    Done    
    

LoginTest
    Open Browser     ${URL}   chrome
    Set Browser Implicit Wait    5
    LoginKW 
    Click Element    class=oxd-userdropdown-icon 
    Click Element    link=Logout       
    Sleep    2    
    Close Browser
    Log    Done    
    Log    Test executed by %{username} on %{os} from ${CURDIR}    #environment & builtin variables 
    

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com    #scalar
@{credential_list}    Admin    admin123    #list
&{login_data}    username=Admin    password=admin123    #dict

*** Keywords ***
LoginKW
    Input Text    name=username    ${credential_list}[0]
    Input Password    name=password    ${login_data}[password]    
    Click Button    class=orangehrm-login-button  
