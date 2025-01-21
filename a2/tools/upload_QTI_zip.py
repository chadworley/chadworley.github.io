import requests
import os

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()

# Variables
course_id = '1314'  # Replace with your course ID... alg '1314'... ml '1282'
file_path_list = ["outcanvas/u12_01_arc_length_from_frac.zip",
"outcanvas/u12_02_arc_length_from_degs.zip",
"outcanvas/u12_03_arc_len_frm_intrr_ang.zip",
"outcanvas/u12_04_arc_len_from_unit_arc.zip",
"outcanvas/u12_05_radians_from_r_L.zip",
"outcanvas/u12_06_radians_from_unit_arc.zip",
"outcanvas/u12_07_radians_from_arc_length.zip",
"outcanvas/u12_08_angle_conversions.zip"]

# fpl = []
# for i in range(70,100):
#     fpl.append("ET_0"+str(i)+".zip")
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

 
 
 
