***SETTINGS***

***KEYWORDS***
Fill Form and Submit
    Open Browser    https://testpages.herokuapp.com/styled/basic-html-form-test.html    Chrome
    Maximize Browser Window
    Input Text    css:input[name="username"]    Y Chiranjeevi
    Input Text    css:input[type="password"]    Ravi@123
    Clear Element Text    tag:textarea
    Input Text    tag:textarea    This is about my automation testing online in the free testing source
    Wait Until Element Is Enabled    css:input[name="filename"]
    Choose File    css:input[name="filename"]    ${CURDIR}${/}ac.jpg
    Execute JavaScript    window.scrollTo(0,800)
    Click Element    css:input[value="cb1"]
    Click Element    css:input[value="rd3"]
    Select From List By Index    xpath=//*[@id="HTMLFormElements"]/table/tbody/tr[7]/td/select    1
    Select From List By Index    xpath=//*[@id="HTMLFormElements"]/table/tbody/tr[7]/td/select    3
    Select From List By Index    xpath=//*[@id="HTMLFormElements"]/table/tbody/tr[8]/td/select    5
    Click Button    xpath=//input[@value="submit"]
    Sleep    10
    Close Browser