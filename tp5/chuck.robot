*** Settings ***
Library  RequestsLibrary
Suite Setup  Create Session  chuck  ${endPoint}

*** Variables ***
${wordToLookUp}  Chuck
${endPoint}  https://api.chucknorris.io
${randomJoke}  /jokes/random
${categories}  /jokes/categories

*** Test Cases ***

hello world
    Log To Console  hello world

bonjour
    afficher  bonjour 

afficher une blague
    ${blague}  recuperer une blague
    contient Chuck  ${blague}
    Afficher  ${blague}

afficher les categories
    @{cat}  recuperer les categories
    FOR  ${categorie}  IN  @{cat}
        Log To Console  ${categorie}
    END

*** Keywords ***
afficher
    [Arguments]  ${var}
    Log To Console  ${var}

contient Chuck
    [Arguments]  ${var}
    Should Contain  container=${var}  item=${wordToLookUp}

recuperer une blague
    ${response}  GET On Session  chuck  ${randomJoke}  expected_status=200
    RETURN  ${response.json()["value"]}

recuperer les categories
    ${response}  GET On Session  chuck  ${categories}  expected_status=200
    RETURN  ${response.json()}