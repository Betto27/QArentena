*** Settings ***

Library    AppiumLibrary


Resource    steps.robot

*** Variables ***
${rc}    100

*** Keywords ***
Abrir App
     Open Application    http://localhost:4723
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=emulador-5554
    ...                 app=C:\\Users\\betto\\QArentena\\nuclone-appium-robot\\app\\nuclone.apk
    ...                 udid=emulator-5554

    #Checkpoint para garantir que estamos no lugar certo


Fechar App

    Close all applications


