import requests
import os

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()

# Variables
course_id = '1314'  # Replace with your course ID... alg '1314'... ml '1282'

file_path_list = ["outcanvas/s18_30_decibels_from_power.zip",
"outcanvas/s18_31_power_from_decibels.zip",
"outcanvas/s18_32_inverse_table.zip",
"outcanvas/s18_33_log10_inverse_table.zip",
"outcanvas/s18_34_log2_inverse_table.zip",
"outcanvas/s18_35_graph_inverse.zip",
"outcanvas/s18_36_inv_func_from_graph.zip",
"outcanvas/s18_37_semi-log_get_exp.zip",
"outcanvas/s18_38_semi-log_get_log.zip",
"outcanvas/s18_39_semi-log_get_base.zip",
"outcanvas/s18_40_slide_rule.zip"]


# FOR UPLOADING ETS
# fpl = []
# for i in range(140,150):
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

