#  sample test file
*** Settings ***
Library    ai_lib.ai_lib.AILibrary

*** Test Cases ***
Ask GPT Example
    ${response}=    Ask Gpt    What is the capital of France?
    Log    ${response}

Classify Text Example
    ${result}=    Classify Text    The server is not responding.
    Log    ${result}
