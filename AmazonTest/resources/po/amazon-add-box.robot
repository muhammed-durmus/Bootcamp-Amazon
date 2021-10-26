*** Settings ***

Library  SeleniumLibrary
Library    DebugLibrary

*** Keywords ***
create session
    open browser    about:blank    chrome
    maximize browser window

go to home page
    go to    https://www.amazon.com.tr/

accept the cookies
    click element   id=sp-cc-accept

go to fashion page
    click element    css=#nav-xshop [tabindex='0']:nth-child(4)

verify fasion page
    wait until page contains element    css=img[alt='AMAZON FASHION']

click search box
  click element    id=twotabsearchtextbox

search for jean pant
  input text    id=twotabsearchtextbox    jean pantolon
  click element    css=input#nav-search-submit-button

verify jean pant page
  element text should not be    css=[class] .a-spacing-top-small [dir='auto']:nth-of-type(3)    jean pantolon

select any jean pant
  click element    css=[data-component-id='1'] .s-image-tall-aspect

select pant size
    select from list by index    css=select#native_dropdown_selected_size_name    2

verify inner box for adding basket
    wait until element is visible    id=buy-now-button

add to basket
  click element    id=add-to-cart-button

close session
  close browser