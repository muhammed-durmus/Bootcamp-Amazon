*** Settings ***
Library   FakerLibrary
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

check the home page
  wait until page contains element    id=nav-logo-sprites

click the account list button
    click element    css=a#nav-link-accountList

click create account button
    click element    css=a#createAccountSubmit

go to register page
    go to    https://www.amazon.com.tr/ap/register?showRememberMe=true&showRmrMe=0&openid.pape.max_auth_age=0&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&siteState=isRegularCheckout.1%7CIMBMsgs.%7CisRedirect.0&pageId=amazon_checkout_tr&openid.return_to=https%3A%2F%2Fwww.amazon.com.tr%2Fgp%2Fbuy%2Fsignin%2Fhandlers%2Fcontinue.html%3Fie%3DUTF8%26brandId%3D%26cartItemIds%3D%26eGCApp%3D%26hasWorkingJavascript%3D0%26isEGCOrder%3D0%26isFresh%3D0%26oldCustomerId%3D%26oldPurchaseId%3D%26preInitiateCustomerId%3D%26purchaseInProgress%3D%26ref_%3Dcart_signin_submit%26siteDesign%3D&prevRID=5PJDK678TSJ7A7YP8CZ5&openid.assoc_handle=amazon_checkout_tr&openid.mode=checkid_setup&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&prepopulatedLoginId=&failedSignInCount=0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0

check the register page
    wait until element contains    css=h1    Hesap oluşturun

create an account
    click element    id=ap_customer_name
    input text    id=ap_customer_name    Muhammed Durmuş
    click element    id=ap_email
    input text    id=ap_email    m.drms1905@gmail.com
    click element    id=ap_password
    input password    id=ap_password    admin123456
    click element    id=ap_password_check
    input password    id=ap_password_check    admin123456
    click button    id=continue

close session
  close browser