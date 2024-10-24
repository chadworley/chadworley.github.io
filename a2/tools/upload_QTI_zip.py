import requests
import os

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()

# Variables
course_id = '1314'  # Replace with your course ID
file_path_list = ["outcanvas/u06_14_factor_diff_of_squares.zip",
"outcanvas/u06_15_factor_sum_of_squares.zip",
"outcanvas/u06_16_quadratic_from_zeros.zip",
"outcanvas/u06_17_cubic_from_zeros.zip",
"outcanvas/u06_18_cubic_from_zeros_doub.zip",
"outcanvas/u06_19_cubic_from_zeros_trip.zip",
"outcanvas/u06_20_cubic_from_zeros_comp.zip",
"outcanvas/u06_21_polynomial_ends.zip",
"outcanvas/u06_22_polynomial_ends_B.zip"]

# fpl = []
# for i in range(22,50):
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









 
 
 
 
 
