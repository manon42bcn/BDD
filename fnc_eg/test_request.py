import requests
response = requests.get("http://www.literoo.com")
print(response.status_code)
print(response.headers)
print(response.url)
print(response.is_permanent_redirect)