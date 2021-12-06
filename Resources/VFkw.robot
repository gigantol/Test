*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
VF.go to main page
    [Arguments]    ${url}
    go to    ${url}
VF.accept cookies
    wait until element is visible    xpath: //div[8]/div/p[3]/button
    click button    xpath: //div[8]/div/p[3]/button
    reload page
VF.go to smartphone eshop
    wait until element is visible    xpath: //*[@id="homepage"]/div[1]/div[3]/div/div[1]/div[2]/div/nav/ul/li[6]/a
    click link    xpath: //*[@id="homepage"]/div[1]/div[3]/div/div[1]/div[2]/div/nav/ul/li[6]/a
VF.choose product
    #wait until page contains element    xpath: /html/body/div[2]/div[5]/div[2]/div[3]/article[1]/div/div[2]/div/p[1]/a
    #click link    xpath: /html/body/div[2]/div[5]/div[2]/div[3]/article[1]/div/div[2]/div/p[1]/a
    #vyber Samsung
    wait until page contains element    xpath: //*[@id="hslisting-box3"]/h2/a
    click link    xpath: //*[@id="hslisting-box3"]/h2/a
VF.choose tarif
    wait until page contains element    xpath: //*[@id="tariffsSelect"]/ul/li[5]/a
    click element    xpath: //*[@id="tariffsSelect"]
    click link    xpath: //*[@id="tariffsSelect"]/ul/li[5]/a
VF.proceed to checkout
    scroll element into view    xpath: /html/body/div[2]/div[2]/div[2]/div/div/div[2]/div[3]/p/a[1]
    click element    xpath: /html/body/div[2]/div[2]/div[2]/div/div/div[2]/div[3]/p/a[1]
VF.accept cookies in ie
    BuiltIn.run keyword and continue on failure    VF.accept cookies