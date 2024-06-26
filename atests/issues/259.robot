*** Settings ***
Library     RequestsLibrary


*** Test Cases ***
Post Content application/json With Empty Data Should Have No Body
    ${content-type}=    Create Dictionary    content-type    application/json
    ${resp}=    POST On Session    ${GLOBAL_SESSION}    /anything    data=${EMPTY}    headers=${content-type}
    Should Be Empty    ${resp.json()['data']}

Post Content With Empty Data Should Have No Body
    ${resp}=    POST On Session    ${GLOBAL_SESSION}    /anything    data=${EMPTY}
    Should Be Empty    ${resp.json()['data']}
