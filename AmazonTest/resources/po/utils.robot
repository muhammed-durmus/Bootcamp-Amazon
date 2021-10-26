*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
*** Variables ***
${TIMEOUT}    10

*** Keywords ***
click
    [Arguments]    ${SELECTOR}
    wait until page contains element    ${SELECTOR}  ${TIMEOUT}
    click element    ${SELECTOR}

scroll
    [Arguments]    ${HEIGHT}
    execute javascript    windows.scrollTo(0,${HEIGHT})

input
    [Arguments]    ${LOCATOR}    ${TEXT}
    clear element text    ${LOCATOR}
    click element    ${LOCATOR}
    input text    ${LOCATOR}    ${TEXT}

get text input
    [Arguments]    ${LOCATOR}
    wait until page contains element    ${LOCATOR}
    ${DATA} =    get text    ${LOCATOR}
    [Return]  ${DATA}

