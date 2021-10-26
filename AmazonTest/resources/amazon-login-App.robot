*** Settings ***
Documentation  Suite description
Resource    ./po/amazon-login.robot

*** Keywords ***

login test
    amazon-login.create session
    amazon-login.go to home page
    amazon-login.accept the cookies
    amazon-login.check the home page
    amazon-login.click the account list button
    amazon-login.click create account button
    amazon-login.check the register page
    amazon-login.create an account
    amazon-login.close session


