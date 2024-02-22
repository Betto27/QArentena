*** Settings ***


Resource    resources/base.robot

Test Setup    Abrir App
Test Teardown    Fechar App


*** Test Cases ***
Validar Saldo disponivel
    Given que estou na pagina inicial do app nubank
    When consulto o meu saldo
    Then o meu saldo deve ser de    R$ 5.500,00

Acessar pagina de "indicação de amigos"
    Given que estou na pagina inicial do app nubank
    When clico no botão indicar amigo
    Then sou direcionado para pagina de indicação de amigos     6 indicaçoes enviadas







