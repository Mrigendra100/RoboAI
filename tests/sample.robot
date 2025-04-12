#  sample test file
*** Settings ***
Library    ai_lib.ai_lib.AILibrary
Library    SeleniumLibrary
Library    Dialogs

*** Test Cases ***
Ask GPT Example
    ${response}=    Ask Gpt    what is AI?
    Log    ${response}

Classify Text Example
    ${result}=    Classify Text    The server is not responding.
    Log    ${result}

Test click element with Ai Fallback
    Open Browser    browser=Chrome    url=https://www.amazon.in/
    Maximize Browser Window
    Pause Execution
    ${input_xpath}=    Extract XPath From Section Using AI    //div[@id="nav-belt"]    search bar inside this    
    Input Text in Other Language    ${input_xpath}    Hello how are you    korean

