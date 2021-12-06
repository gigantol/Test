*** Settings ***
Documentation    Hi there
Resource    ../Resources/common.robot
Resource    ../Resources/VFkw.robot

Test Setup    common.start    ${BROWSER}
Test Teardown    common.end

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://vodafone.cz

*** Test Cases ***
Objednani telefonu bez tarifu
    [Tags]    Smoke
    VF.go to main page    ${URL}
    builtin.run keyword if    '${BROWSER}' == 'ie'  VF.accept cookies in ie
    ...  ELSE  VF.accept cookies
    #builtin.run keyword unless    ${BROWSER} == "ie"  VF.accept cookies
    VF.go to smartphone eshop
    VF.choose product
    VF.choose tarif
    common.take screenshot
    VF.proceed to checkout
*** Keywords ***
