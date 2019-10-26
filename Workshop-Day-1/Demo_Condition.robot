*** Test Cases ***
IF ELSE condition
    [Documentation]    
    ...    My student grade 
    ...        >=80    = A
    ...        70 - 79 = B
    ...        60 - 69 = C
    ...        50 - 59 = D
    ...        50<     = F
    @{student grades} =    Create List    23    67    80    99
    FOR    ${grade}    IN    @{student grades}
        Log    ${grade}
        Run Keyword If    ${grade} >= 80    Log    A
        ...    ELSE IF    70 <= ${grade} <= 79    Log    B
        ...    ELSE IF    60 <= ${grade} <= 69    Log    C  
        ...    ELSE IF    50 <= ${grade} <= 59    Log    D  
        ...    ELSE    Log    F
        # Run Keyword If    70 <= ${grade} <= 79    Log    B
        # Run Keyword If    60 <= ${grade} <= 69    Log    C  
        # Run Keyword If    50 <= ${grade} <= 59    Log    D  
        # Run Keyword If    ${grade} < 50    Log    F     
    END
