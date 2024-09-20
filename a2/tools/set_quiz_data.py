import requests
import time
from datetime import datetime, timedelta
import os

avt = ["2024-09-20 8:00:00"]*5
dut = ["2024-09-20 23:59:00"]*5
front = "u03_"
files = ["01_leftarea_from_x.Rmd",
         "02_rightarea_from_x.Rmd",
         "03_centralarea_from_x.Rmd",
         "04_twotailarea_from_x.Rmd",
         "05_betweenarea_from_x.Rmd"]

practice_url_front = "https://chadworley.github.io/a2/u03/outhtml/"

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()
headers = {"Authorization": f"Bearer {access_token}"}
course_id = '1314'
canvas_url = 'https://bart.instructure.com'

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
    A = A+timedelta(hours=4)
    D = D+timedelta(hours=4)
    A = A.strftime("%Y-%m-%dT%H:%M:%SZ")
    D = D.strftime("%Y-%m-%dT%H:%M:%SZ")
    pref = files[i].split(".")[0]
    name = front+pref
    assdesc = "<a href='"+practice_url_front+pref+".html'>practice</a>"
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



