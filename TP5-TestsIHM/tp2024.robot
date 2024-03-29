*** Settings ***

Library  SeleniumLibrary
Test Setup  Ouvrir Prestashop
Test Teardown  Fermer Prestashop

*** Test Cases ***
#test 1
    # Ouvrir Prestashop
    # Maximize Browser Window
    # Input Text  xpath=//*[@id="search_widget"]/form/input[2]  mug
    # Press Keys  xpath=//*[@id="search_widget"]/form/input[2]  RETURN
    # Element Text Should Be  xpath=//*[@id="js-product-list-top"]/div[1]/p  Il y a 5 produits.
    # @{listeMUG}  Get WebElements  xpath=//*[@id="js-product-list"]/div[1]/div/article/div/div[2]/h2/a
    # FOR  ${elt}  IN  @{listeMUG}
    #     Element Should Contain  ${elt}  mug  ignore_case=True
    # END
    #Rechercher  mug
    #Verifier  Il y a 5 produits.  MUG


    # Click Element  //*[@id="js-product-list"]/div[1]/div[1]/article/div/div[1]/a/picture/img 


#test 2
    #[Template]  Rechercher et verifier
    #mug  Il y a 5 produits.
    #T-shirt  Il y a 1 produit.

test 3 
    survoler  HOMMES

*** Keywords ***
Ouvrir Prestashop
    Open Browser  http://www.qualifiez.fr/monPrestashop2/prestashop/index.php  Chrome
    # Title Should Be  monPrestashop

Fermer Prestashop
    Close Browser

Survoler
    [Arguments]    ${item}
    Mouse Over  xpath=//*[@id="category-3"]/a
    Element Should Be Visible  ${item} 

Rechercher 
    [Arguments]    ${item}
    Ouvrir Prestashop
    Maximize Browser Window
    Input Text  xpath=//*[@id="search_widget"]/form/input[2]  ${item}
    Press Keys  xpath=//*[@id="search_widget"]/form/input[2]  RETURN

Verifier 
    [Arguments]  ${message}  ${item}
    Element Text Should Be  xpath=//*[@id="js-product-list-top"]/div[1]/p  ${message}
    @{listeMUG}  Get WebElements  xpath=//*[@id="js-product-list"]/div[1]/div/article/div/div[2]/h2/a
    FOR  ${elt}  IN  @{listeMUG}
        Element Should Contain  ${elt}  ${item}  ignore_case=True
    END

Rechercher et verifier 
    [Arguments]  ${item}  ${message}
    Rechercher  ${item}
    Verifier  ${message}  ${item}  