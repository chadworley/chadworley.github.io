import requests
import os

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()

# Variables
course_id = '1314'  # Replace with your course ID... alg '1314'... ml '1282'

file_path_list = ["outcanvas/u17_04_percent_changes.zip",
"outcanvas/u17_05_certificate_of_deposit.zip",
"outcanvas/u17_06_exponential_population.zip",
"outcanvas/u17_07_equal_temperament_up.zip",
"outcanvas/u17_08_equal_temperament_down.zip",
"outcanvas/u17_09_mug_cooling.zip"]

# FOR UPLOADING ETS
# fpl = []
# for i in range(130,140):
#     fpl.append("ET_"+str(i)+".zip")
# file_path_list = fpl

canvas_url = 'https://bart.instructure.com'

for file_path in file_path_list:
  # Get the upload URL
  url = f"{canvas_url}/api/v1/courses/{course_id}/content_migrations"
  headers = {
      "Authorization": f"Bearer {access_token}"
  }
  file_size = os.path.getsize(file_path)
  data = {
      "migration_type": "qti_converter",  # Set migration type for QTI zip file
      "pre_attachment[name]": os.path.basename(file_path),
      "pre_attachment[size]": file_size
  }
  response = requests.post(url, headers=headers, data=data)

  # Get the upload URL
  upload_url = response.json()['pre_attachment']['upload_url']

  # Upload the file
  with open(file_path, 'rb') as f:
      files = {
        'file': f,
      }
      data = {
        'content-type': 'application/zip',
        'size': file_size,
      }
      upload_response = requests.post(upload_url,data=data,files=files)
  print(upload_response.json())

