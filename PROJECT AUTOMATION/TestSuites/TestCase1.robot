*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    ../Libraries/Lib1.py
#Variables    ../Variables/Variable1.py
Library    DateTime
Resource    ../Resources/resource1.robot

*** Test Cases ***
Automation1
    Fill Form and Submit


#GITHUB  Token:     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