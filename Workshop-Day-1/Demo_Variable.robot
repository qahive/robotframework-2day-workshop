*** Test Cases ***
Demo Scalar
    [Documentation]    
    ...    This test case for demo scalar
    ...    Try to set test variable    
    ${username} =    Set Variable    อาร์ท
    ${surname} =    BuiltIn.Set Variable    Doe
    # Try to print log hello user
    Log    Hello ${username} and ${surname}
    # Log    Hi ${username}
    # set nickname
    ${nickname} =    Set Variable    Mr J

Demo List
    @{product names}    Create List    Iphone 11    Android 12    Window phone
    Log Many    @{product names}
    Log    ${product names[1]}

Demo Dictionary
    [Tags]    SmokeTest
    &{user1}    Create Dictionary    username=john    password=welcome1
    &{user2}    Create Dictionary    username=mary    password=welcome2
    Log    ${user1.username}
    Log    ${user2.password}
    
Demo set keywords
    ${hi} =     Set Variable     Hello, world!   
    ${hi2} =     Set Variable     I said: ${hi}   
    ${var1}     ${var2} =     Set Variable     Hello world 
    ${list with some items}    Set Variable    test
    @{list} =     Set Variable     ${list with some items}   

