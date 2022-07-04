Feature: the website redir to a sucure https
    Scenario: the user doesnt use a complete https url
        Given insert url: http://www.literoo.com
        Then url recieved should be: https://www.literoo.com/