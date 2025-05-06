import requests
import os

with open("//Users/chad.worley@bartcharter.org/Documents/canvasAPItests/acctok.txt") as f:
  access_token = f.read()

# Variables
course_id = '1314'  # Replace with your course ID... alg '1314'... ml '1282'

file_path_list = ["outcanvas/s18_14_two-step_inverse_alg.zip",
"outcanvas/s18_15_solve_exponential.zip",
"outcanvas/s18_16_solve_logarithmic.zip",
"outcanvas/s18_17_equal_temperament_get_freq.zip",
"outcanvas/s18_18_equal_temperament_get_key.zip",
"outcanvas/s18_19_cents.zip",
"outcanvas/s18_20_f2_from_cents.zip",
"outcanvas/s18_21_equal_temperament_fifth_error.zip",
"outcanvas/s18_22_earthquake_magnitude.zip",
"outcanvas/s18_23_earthquake_energy.zip",
"outcanvas/s18_24_earthquake_nrg_rat.zip",
"outcanvas/s18_25_earthquake_mag_diff.zip",
"outcanvas/s18_26_pH.zip",
"outcanvas/s18_27_hydrogen_ion_conc.zip",
"outcanvas/s18_28_pOH.zip",
"outcanvas/s18_29_hydroxide_ion_conc.zip"]


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

