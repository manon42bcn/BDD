from behave import given, then, when
from selenium import webdriver
#from selenium.webdriver.firefox.service import Service as FirefoxService
#from webdriver_manager.firefox import GeckoDriverManager
import requests

driver = webdriver.Firefox()
#driver.get("https://dev.to")
#service = FirefoxService(xecutable_path=GeckoDriverManager().install())
#driver = webdriver.Firefox(service=service)

#driver = webdriver.Chrome("../../chromedriver")

@given("insert url: {dir}")
def test_redir(context, dir):
    #response = requests.get(dir)
    response = driver.get(dir)
    context.response = response

@then("url recieved should be: {expected}")
def test_result(context, expected):
    assert expected == context.response.url, "FAIL, the website doent send you to a https {} {}".format(context.response.url, context.response.status_code)


