*** Keywords ***


Given que estou na pagina inicial do app nubank
    Wait until element is visible    accessibility_id=card-hero     10
    Capture page screenshot

When consulto o meu saldo
    Click element    accessibility_id=show-balance
    Capture page screenshot

Then o meu saldo deve ser de
    [Arguments]    ${saldo}

    Wait until element is visible    accessibility_id=user-balance    10
    Element text should be    accessibility_id=user-balance     ${saldo}
    Capture page screenshot

When clico no botão indicar amigo
    Wait until element is visible   xpath=(//android.view.ViewGroup[@class="android.view.ViewGroup"])[14]   10
    Click element    xpath=(//android.view.ViewGroup[@class="android.view.ViewGroup"])[14]


Then sou direcionado para pagina de indicação de amigos
    [Arguments]    ${msg}

    Wait until element is visible   xpath=(//android.view.ViewGroup[@class="android.view.ViewGroup"])[14]   10
    Element text should be    xpath=//android.widget.TextView[@text="6 indicaçoes enviadas" and @class="android.widget.TextView"]    ${msg}
    Capture page screenshot    custom_name.png

