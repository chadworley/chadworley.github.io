import requests
import time
from datetime import datetime, timedelta
import os


front = "u10_"
files = ["01_sqrt_lake_area.Rmd",
"02_points_on_sqrtx.Rmd",
"03_translate_flip_sqrt.Rmd",
"04_sqrt_shift_points.Rmd",
"05_points_on_cbrtx.Rmd",
"06_translate_flip_cbrt.Rmd",
"07_sqrt_line_extraneous.Rmd",
"08_factrd_rational_featrs.Rmd",
"09_expndd_rational_featrs.Rmd",
"10_find_rational_hole.Rmd",
"11_line_thru_rational_hole.Rmd",
"12_distance_formula.Rmd",
"13_trilateration.Rmd"]

practice_url_front = "https://chadworley.github.io/a2/u10/outhtml/"
agenda = "/Users/chad.worley@bartcharter.org/Documents/chadworley.github.io/a2/weekly_a2.Rmd"

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()
headers = {"Authorization": f"Bearer {access_token}"}
course_id = '1314'  # Replace with your course ID... alg '1314'... ml '1282'
canvas_url = 'https://bart.instructure.com'

def get_ass_id(name):
    searchdata = {"search_term":name}
    url = f"{canvas_url}/api/v1/courses/{course_id}/quizzes/"
    response = requests.get(url,data=searchdata,headers=headers)
    assid = response.json()[0]['id']
    return(assid)
# 
# def set_quiz_ass(name,avt,dut,assdesc=" "):
#     searchdata = {"search_term":name}
#     url = f"{canvas_url}/api/v1/courses/{course_id}/quizzes/"
#     response = requests.get(url,data=searchdata,headers=headers)
#     myid = response.json()[0]["id"]
#     data = {'quiz[due_at]': dut,
#             "quiz[unlock_at]": avt,
#             "quiz[shuffle_answers]": 0,
#             "quiz[published]": 1,
#             "quiz[notify_of_update]":0,
#             "quiz[allowed_attempts]":10}
#     response = requests.put(url+str(myid),data=data,headers=headers)
#     url = f"{canvas_url}/api/v1/courses/{course_id}/assignments/"
#     response = requests.get(url,data=searchdata,headers=headers)
#     assid = response.json()[0]['id']
#     data = {'assignment[post_to_sis]': 1,
#             'assignment[description]':assdesc}
#     url = f"{canvas_url}/api/v1/courses/{course_id}/assignments/"+str(assid)
#     response = requests.put(url,data=data,headers=headers)


for i in range(len(files)):
    pref = files[i].split(".")[0]
    name = front+pref
    theid = get_ass_id(name)
    link1 = practice_url_front+pref+".html"
    link2 = f"{canvas_url}/courses/{course_id}/quizzes/{theid}"
    print("* "+name+" [Canvas]("+link2+")/[public]("+link1+")")



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



