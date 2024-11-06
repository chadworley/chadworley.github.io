import requests
import time
from datetime import datetime, timedelta
import os

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()



# Variables
course_id = '1314'  # Replace with your course ID
canvas_url = 'https://bart.instructure.com'
# quiz_id = 2254

headers = {
  "Authorization": f"Bearer {access_token}"
}

# url = f"{canvas_url}/api/v1/courses/{course_id}/assignment_groups"
# print(requests.get(url,headers=headers).json())


data_set = []
url = f"{canvas_url}/api/v1/courses/{course_id}/assignments/?per_page=50"
r = requests.get(url, headers=headers)
raw = r.json()
for question in raw:
    data_set.append(question)

while r.links['current']['url'] != r.links['last']['url']:
    r = requests.get(r.links['next']['url'], headers=headers)
    raw = r.json()
    for question in raw:
        data_set.append(question)

## 2126 = effort
## 2127 = mastery

ept = 0
mpt = 0

for i in data_set:
    if i["assignment_group_id"] == 2126:
        ept = ept + i["points_possible"]
    if i["assignment_group_id"] == 2127:
        mpt = mpt + i["points_possible"]

print(ept)
print(mpt)
