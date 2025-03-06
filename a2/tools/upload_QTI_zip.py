import requests
import os

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()

# Variables
course_id = '1314'  # Replace with your course ID... alg '1314'... ml '1282'
file_path_list = ["outcanvas/u15_01_circle_to_wave.zip",
"outcanvas/u15_04_wave_vert_reflect.zip",
"outcanvas/u15_05_sin_mid.zip",
"outcanvas/u15_06_sin_period.zip",
"outcanvas/u15_07_sin_amp_per_mid.zip",
"outcanvas/u15_08_get_freq.zip",
"outcanvas/u15_09_wave_amp.zip",
"outcanvas/u15_10_wave_period.zip",
"outcanvas/u15_11_wave_midline.zip"]

## FOR UPLOADING ETS
# fpl = []
# for i in range(100,120):
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

 
 
 
