*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
start
    [Arguments]    ${browser}
    open browser    about:blank  ${browser}
    delete all cookies
    maximize browser window
end
    close browser
common.take screenshot
    sleep    2s
    capture page screenshot    tarifSelection_src{index}.png