*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary

*** Test Cases ***

create session
    open browser    about:blank    chrome
    maximize browser window

go to home page
    go to    https://www.amazon.com.tr/ap/register?showRememberMe=true&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com.tr%2F%3F%26tag%3Dtrtxtgoabkde-21%26ref%3Dnav_ya_signin%26adgrpid%3D119366379979%26hvpone%3D%26hvptwo%3D%26hvadid%3D542862704348%26hvpos%3D%26hvnetw%3Dg%26hvrand%3D15656260967529554164%26hvqmt%3De%26hvdev%3Dc%26hvdvcmdl%3D%26hvlocint%3D%26hvlocphy%3D1012782%26hvtargid%3Dkwd-10573980%26hydadcr%3D12932_2246093%26gclid%3DCjwKCAjwh5qLBhALEiwAioods3N3Yaej7n6QCsM5tPblGQM7sCRrse6F8iwjJWb4OwkfMzCuwXwT1xoCKDkQAvD_BwE%26language%3Dtr_TR&prevRID=4A8JKHFTQV6BZ8N40Q9H&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=trflex&openid.mode=checkid_setup&prepopulatedLoginId=&failedSignInCount=0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=trflex&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0

login
    wait until element is visible    id=ap_customer_name
    ${ad} =     FakerLibrary.first_name
    ${soyad} =     FakerLibrary.last_name
    click element    id=ap_customer_name
    input text    id=ap_customer_name    Muhammed DURMUS
    ${e-mail} =     FakerLibrary.email
    click element    id=ap_email
    input text    id=ap_email    ${e-mail}
    ${password} =     FakerLibrary.password    length=5   special_chars=True    digits=True  upper_case=False  lower_case=True
    click element    id=ap_password
    input text    id=ap_password    ${password}
    click element    id=ap_password_check
    input text    id=ap_password_check    ${password}