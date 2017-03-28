*** Settings ***
Documentation  A test suite with a single test tor google search
Resource    resource.robot


*** Test Cases ***
Google search
    Open Browser To Google Search Page
    Input Searchtext  masihur
    Submit Search
    [Teardown]  Close Browser



