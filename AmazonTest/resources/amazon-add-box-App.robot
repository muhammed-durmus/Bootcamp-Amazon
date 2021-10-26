*** Settings ***
Documentation  Suite description
Resource    ./po/amazon-add-box.robot

*** Keywords ***
first test
    amazon-add-box.create session
    amazon-add-box.go to home page
    amazon-add-box.accept the cookies
    amazon-add-box.go to fashion page
    amazon-add-box.verify fasion page
    amazon-add-box.click search box
    amazon-add-box.search for jean pant
    amazon-add-box.verify jean pant page
    amazon-add-box.select any jean pant
    amazon-add-box.select pant size
    amazon-add-box.verify inner box for adding basket
    amazon-add-box.add to basket
    amazon-add-box.close session