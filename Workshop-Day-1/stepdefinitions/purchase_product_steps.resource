*** Settings ***
Library    SeleniumLibrary   
Resource    ../resources/HomePage.resource 
Resource    ../resources/OrderPage.resource

*** Keywords ***
Unauthen user add product "${product id}" to shopping cart
    HomePage.Add product to shopping cart    ${product id}
    
I checkout product
    HomePage.Checkout product

I should see total product price equal to "${product price}"
    OrderPage.Wait until page load success
    OrderPage.Verify total product price    $16.51
