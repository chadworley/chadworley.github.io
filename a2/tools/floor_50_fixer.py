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
#     'cant_go_back': False,
#     'access_code': None,
#     'ip_filter': None,
#     'due_at': '2024-08-22T03:59:00Z',
#     'lock_at': None,
#     'unlock_at': '2024-08-21T12:00:00Z',
#     'published': False,
#     'unpublishable': True,
#     'locked_for_user': True,
#     'lock_info': {'unlock_at': '2024-08-21T12:00:00Z',
#     'asset_string': 'quizzes:quiz_2254'},
#     'lock_explanation': 'This quiz is locked until Aug 21 at 8am.',
#     'hide_results': 'until_after_last_attempt',
#     'show_correct_answers_at': None,
#     'hide_correct_answers_at': None,
#     'all_dates': [{'due_at': '2024-08-22T03:59:00Z',
#     'unlock_at': '2024-08-21T12:00:00Z',
#     'lock_at': None,
#     'base': True}],
#     'can_unpublish': True,
#     'can_update': True,
#     'require_lockdown_browser': False,
#     'require_lockdown_browser_for_results': False,
#     'require_lockdown_browser_monitor': False,
#     'lockdown_browser_monitor_data': None,
#     'speed_grader_url': None,
#     'permissions': {'manage': True,
#         'read': True,
#         'create': True,
#         'update': True,
#         'submit': True,
#         'preview': True,
#         'delete': True,
#         'read_statistics': True,
#         'grade': True,
#         'review_grades': True,
#         'view_answer_audits': False,
#         'manage_assign_to': True},
#     'quiz_reports_url': 'https://bart.instructure.com/api/v1/courses/1314/quizzes/2254/reports',
#     'quiz_statistics_url': 'https://bart.instructure.com/api/v1/courses/1314/quizzes/2254/statistics',
#     'message_students_url': 'https://bart.instructure.com/api/v1/courses/1314/quizzes/2254/submission_users/message',
#     'section_count': 2,
#     'important_dates': False,
#     'quiz_submission_versions_html_url': 'https://bart.instructure.com/courses/1314/quizzes/2254/submission_versions',
#     'assignment_id': 21243,
#     'one_time_results': False,
#     'only_visible_to_overrides': False,
#     'visible_to_everyone': True,
#     'assignment_group_id': 1908,
#     'show_correct_answers_last_attempt': False,
#     'version_number': 5,
#     'has_access_code': False,
#     'post_to_sis': True,
#     'migration_id': '4038_ET_001_145086625',
#     'in_paced_course': False,
#     'question_types': ['multiple_choice_question'],
#     'quiz[notify_of_update]':False
# }


# 'due_at': '2024-08-22T03:59:00Z',
# 'unlock_at': '2024-08-21T12:00:00Z',

# date1 = datetime.strptime('24/08/21 23:59:59',
#                           '%y/%m/%d %H:%M:%S')
# 
# 
# date2 = date1 + timedelta(days=int(ass[3]))
# mystr = "ET_"+"{:03d}".format(i)
# searchdata = {"search_term":mystr}

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

## 1908 = effort
## 1909 = mastery

ept = 0
mpt = 0

for i in data_set:
    if i["assignment_group_id"] == 1908:
        ept = ept + i["points_possible"]
    if i["assignment_group_id"] == 1909:
        mpt = mpt + i["points_possible"]

print(ept)
print(mpt)
