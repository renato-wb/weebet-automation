*** Settings ***

Documentation        Ações e elementos base para o sistema

Library        Browser    #auto_closing_level=KEEP


*** Keywords ***

Start session
    New Browser    browser=chromium    headless=False    args=['--start-maximized']
    New Context    viewport=${None}    permissions=['geolocation']
    New Page        http://localhost:4200
    # Grant Permissions    geolocation
    # Set Viewport Size    1920    1080
    