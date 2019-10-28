*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${Browser}    gc

*** Test Cases ***
Multiple file upload
    Open Browser    url=https://demos.telerik.com/kendo-ui/upload/index    browser=${Browser}
    Choose File    id:files    ${CURDIR}/test_resources/helloworld.txt
    Choose File    id:files    ${CURDIR}/test_resources/file2.txt
