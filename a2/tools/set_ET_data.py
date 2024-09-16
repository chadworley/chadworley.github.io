import requests
import time
from datetime import datetime, timedelta
import os

#

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()
headers = {"Authorization": f"Bearer {access_token}"}
course_id = '1314'
canvas_url = 'https://bart.instructure.com'

def set_quiz_ass(name,avt,dut):
    searchdata = {"search_term":name}
    url = f"{canvas_url}/api/v1/courses/{course_id}/quizzes/"
    response = requests.get(url,data=searchdata,headers=headers)
    myid = response.json()[0]["id"]
    data = {'quiz[due_at]': dut,
            "quiz[unlock_at]": avt,
            "quiz[shuffle_answers]": 0,
            "quiz[published]": 1,
            "quiz[show_correct_answers_last_attempt]":0,
            "quiz[show_correct_answers]":0,
            "quiz[notify_of_update]":0,
            "quiz[allowed_attempts]":3}
    response = requests.put(url+str(myid),data=data,headers=headers)
    url = f"{canvas_url}/api/v1/courses/{course_id}/assignments/"
    response = requests.get(url,data=searchdata,headers=headers)
    assid = response.json()[0]['id']
    data = {'assignment[post_to_sis]': 1}
    url = f"{canvas_url}/api/v1/courses/{course_id}/assignments/"+str(assid)
    response = requests.put(url,data=data,headers=headers)

noET = ["2024-09-02",
        "2024-09-05",
        "2024-10-14"]

day1 = "2024-08-21 12:00:00"
strt = datetime.strptime(day1,"%Y-%m-%d %H:%M:%S")
holis = [datetime.strptime(noET[i]+" 12:00:00","%Y-%m-%d %H:%M:%S") for i in range(len(noET))]

avts = {}
duts = {}
ddel = 0
for i in range(0,30):
    day = strt+timedelta(days=i)
    if( day.weekday() not in (5,6) and day not in holis ):
        ddel = ddel+1
        avts[ddel]=day.strftime("%Y-%m-%d")+"T12:00:00Z"
        duts[ddel]=(day+timedelta(days=1)).strftime("%Y-%m-%d")+"T03:59:00Z"

for i in range(16,20):
    name = "ET_"+"{:03d}".format(i)
    avt = avts[i]
    dut = duts[i]
    set_quiz_ass(name,avt,dut)








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
# 
# date1 = datetime.strptime('24/08/21 03:59:00',
#                           '%y/%m/%d %H:%M:%S')
# 
# 
# for i in range(2,4):
#     date2 = date1 + timedelta(days=i)
#     duestr = date2.strftime("%Y-%m-%d")+"T03:59:00Z"
#     date3 = date1 + timedelta(days=(i-1))
#     unltime = date3.strftime("%Y-%m-%d")+"T12:00:00Z"
#     mystr = "ET_"+"{:03d}".format(i)
#     searchdata = {"search_term":mystr}
#     url = f"{canvas_url}/api/v1/courses/{course_id}/quizzes/"
#     response = requests.get(url,data=searchdata,headers=headers)
#     myid = response.json()[0]["id"]
#     data = {'quiz[due_at]': duestr,
#             "quiz[unlock_at]": unltime,
#             "quiz[shuffle_answers]": 0,
#             "quiz[published]": 1
#     }
#     response = requests.put(url+str(myid),data=data,headers=headers)
#     url = f"{canvas_url}/api/v1/courses/{course_id}/assignments/"
#     response = requests.get(url,data=searchdata,headers=headers)
#     assid = response.json()[0]['id']
#     data = {'assignment[post_to_sis]': 1}
#     url = f"{canvas_url}/api/v1/courses/{course_id}/assignments/"+str(assid)
#     response = requests.put(url,data=data,headers=headers)
# 





