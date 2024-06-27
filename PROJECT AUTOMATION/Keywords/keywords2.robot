***SETTINGS***


***KEYWORDS***
Automate Web Actions
    Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30

    # Select Radio Button 2
    Click Element    css=input[value="radio2"]

    # Enter Text into Text Box
    Input Text    id=autocomplete    Bharath

    # Select Dropdown Value Option-2
    Select From List by Index    id=dropdown-class-example    1

    # Select Checkbox 2
    Click Element    id=checkBoxOption2

    # Click on Open Window Button and Validate Title
    Click Element    id=openwindow
    ${bt_title}=    Get Title
    Should Be Equal    ${bt_title}    Practice Page

    # Click on Open Tab Button and Validate Title
    Click Element    link=Open Tab
    ${bd_title}=    Get Title
    Should Be Equal    ${bd_title}    Practice Page

    # Switch back to the main window
    Switch Window    MAIN

    # Enter Name in Text Box, Click on Alert, and Accept Alert
    Input Text    id=name    Y Chiranjeevi
    Click Element    id=alertbtn
    Handle Alert    accept

    # Enter Name in Text Box, Click on Confirm, and Dismiss Alert
    Input Text    id=name    Y Chiranjeevi
    Click Element    id=confirmbtn
    Handle Alert    dismiss

    # Scroll to a specific position
    Execute Javascript    window.scrollTo(0,500)

    # Read all price details from the table
    @{prices}=    Get WebElements    xpath=//*[@id="product"]/tbody/tr/td[3]
    @{integers}=    Create List
    :FOR    ${price}    IN    @{prices}
    \    ${price_text}=    Get Text    ${price}
    \    Run Keyword If    "${price_text}".isdigit()    Append To List    ${integers}    ${price_text}
    Log    Prices: ${integers}

    # Read all the names
    @{names}=    Get WebElements    xpath=//*[@class='tableFixHead']//tbody/tr/td[1]
    @{names_list}=    Create List
    :FOR    ${name}    IN    @{names}
    \    ${name_text}=    Get Text    ${name}
    \    Append To List    ${names_list}    ${name_text}
    Log    Names: ${names_list}

    Close Browser