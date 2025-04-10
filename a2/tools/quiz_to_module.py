import requests
import time
from datetime import datetime, timedelta
import os

files = ["16_logistic_map.Rmd"]

front = "u17_"
module_search = "Unit 17"

practice_url_front = "https://chadworley.github.io/a2/u17/outhtml/"
course_id = '1314'  # Replace with your course ID... alg '1314'... ml '1282'
canvas_url = 'https://bart.instructure.com'

is_DST = False
if(is_DST):
    tdel = 4
else:
    tdel = 5

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()
headers = {"Authorization": f"Bearer {access_token}"}

url = f"{canvas_url}/api/v1/courses/{course_id}/modules/"
searchdata = {"search_term":module_search}
response = requests.get(url,data=searchdata,headers=headers)
mod_id = response.json()[0]['id']
print(mod_id)


def quiz_to_mod(name,mod_id):
    searchdata = {"search_term":name}
    url = f"{canvas_url}/api/v1/courses/{course_id}/quizzes/"
    response = requests.get(url,data=searchdata,headers=headers)
    myid = response.json()[0]["id"]
    data = {"module_item[type]": "Quiz",
            "module_item[content_id]": myid}
    url = f"{canvas_url}/api/v1/courses/{course_id}/modules/{mod_id}/items"
    response = requests.put(url,data=data,headers=headers)
    # response = requests.get(url,headers=headers)
    print(data)
    print(response.json())
    # print(len(response.json()[0]))
    # print(response.length)


for i in range(len(files)):
    pref = files[i].split(".")[0]
    name = front+pref
    quiz_to_mod(name,mod_id)



# data = {
#     'description': '',
#     'quiz_type': 'assignment',
#     'time_limit': None,
#     'timer_autosubmit_disabled': False,
#     'shuffle_answers': False,
#     'show_correct_answers': False,
#     'scoring_policy': 'keep_highest',
#     'allowed_attempts': 2,
#     'one_question_at_a_time': False,
#     'question_count': 4,
#     'points_possible': 4.0,
#     'due_at': '2024-08-22T03:59:00Z',
#     'lock_at': None,
#     'unlock_at': '2024-08-21T12:00:00Z',
#     'published': False,
#     'locked_for_user': True,
#     'hide_results': 'until_after_last_attempt',
#     'show_correct_answers_at': None,
#     'hide_correct_answers_at': None,
#     'can_unpublish': True,
#     'can_update': True,
#     'only_visible_to_overrides': False,
#     'visible_to_everyone': True,
#     'assignment_group_id': 1908,
#     'show_correct_answers_last_attempt': False,
#     'post_to_sis': True,
# }
# 
# 



