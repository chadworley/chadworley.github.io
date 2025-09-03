import requests
import time
from datetime import datetime, timedelta
import os

files = ["ET_09_03"]

avt = ["2025-09-03 7:00:00"]
dut = ["2025-09-04 22:59:00"]
front = ""

# practice_url_front = "https://chadworley.github.io/a2/u19/outhtml/"
course_id = '2110'  # Replace with your course ID... alg '1314'... ml '1282'
canvas_url = 'https://bart.instructure.com'

is_DST = False
if(is_DST):
    tdel = 4
else:
    tdel = 5


with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()
headers = {"Authorization": f"Bearer {access_token}"}


def set_quiz_ass(name,avt,dut,assdesc=" "):
    searchdata = {"search_term":name}
    url = f"{canvas_url}/api/v1/courses/{course_id}/quizzes/"
    response = requests.get(url,data=searchdata,headers=headers)
    myid = response.json()[0]["id"]
    data = {'quiz[due_at]': dut,
            "quiz[unlock_at]": avt,
            "quiz[shuffle_answers]": 0,
            "quiz[published]": 1,
            "quiz[notify_of_update]":0,
            "quiz[allowed_attempts]":10}
    response = requests.put(url+str(myid),data=data,headers=headers)
    url = f"{canvas_url}/api/v1/courses/{course_id}/assignments/"
    response = requests.get(url,data=searchdata,headers=headers)
    assid = response.json()[0]['id']
    data = {'assignment[post_to_sis]': 1,
            'assignment[description]':assdesc}
    url = f"{canvas_url}/api/v1/courses/{course_id}/assignments/"+str(assid)
    response = requests.put(url,data=data,headers=headers)


for i in range(len(files)):
    A = datetime.strptime(avt[i],"%Y-%m-%d %H:%M:%S")
    D = datetime.strptime(dut[i],"%Y-%m-%d %H:%M:%S")
    A = A+timedelta(hours=tdel)
    D = D+timedelta(hours=tdel)
    A = A.strftime("%Y-%m-%dT%H:%M:%SZ")
    D = D.strftime("%Y-%m-%dT%H:%M:%SZ")
    pref = files[i].split(".")[0]
    name = front+pref
    # assdesc = "<a href='"+practice_url_front+pref+".html'>examples with solutions</a>"
    assdesc = " "
    set_quiz_ass(name,A,D,assdesc)



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



