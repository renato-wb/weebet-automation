*** Settings ***

Documentation        Base elements in the system

Library        Browser    #auto_closing_level=KEEP


*** Keywords ***

Start session
    New Browser    browser=chromium    headless=False    args=['--start-maximized']
    New Context    viewport=${None}    permissions=['geolocation']
    New Page        http://localhost:4200
    