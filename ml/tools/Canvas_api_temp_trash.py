

# getresp = requests.get(url, headers=headers)
#
# for js in getresp.json():
#   id = str(js['id'])
#   print(id)
#   print(js)
#   # requests.put(url+"/"+id, headers=headers,data={"workflow_state":"failed"})
#
# # requests.put(url+"/"+'3997', headers=headers,data={"workflow_state":"failed"})





#
# for i in getresp.json():
#   print(i['workflow_state'])

# response = requests.post(url, headers=headers, data=data)
# print(response.json())
# upload_url = response.json()["pre_attachment"]["upload_url"]
#









# import requests
# import os
# import time
#
# # Variables
# course_id = '1314'  # Replace with your course ID
# zip_file_path = 'u01_04_corr_or_cause.zip'  # Path to your QTI zip file
# access_token = '16308~URxv943nXtVnvFuJNr83r2B9HzXKkyFwGMvt9cAKvX4VRX9YREmr4ZrNPNLfaB9M'  # Your access token
# canvas_url = 'https://bart.instructure.com'
#
# # Step 1: Create a content migration
# migration_url = f"{canvas_url}/api/v1/courses/{course_id}/content_migrations"
# headers = {
#     "Authorization": f"Bearer {access_token}"
# }
#
# # Get the actual file size
# file_size = os.path.getsize(zip_file_path)
#
# # Request data for content migration
# data = {
#     "migration_type": "zip_file_importer",  # Set migration type for QTI zip file
#     "pre_attachment[name]": os.path.basename(zip_file_path),  # Name of the file
#     "pre_attachment[size]": file_size  # Size in bytes
# }
#
# # Create the content migration
# migration_response = requests.post(migration_url, headers=headers, data=data)
# migration_response.raise_for_status()  # Raise an error for bad responses
#
# # Step 2: Get the upload URL
# upload_url = migration_response.json()['upload_url']
#
# # Step 3: Upload the zip file
# with open(zip_file_path, 'rb') as f:
#     files = {
#         'file': f  # The key should be 'file', which is the file to upload
#     }
#
#     upload_response = requests.post(upload_url, files=files)
#     upload_response.raise_for_status()  # Raise an error for bad responses
#
# # Print result of the upload
# print("Upload Response:", upload_response.json())
#
# # Optional: Monitor Progress (if needed)
# progress_url = migration_response.json().get('progress_url')
# if progress_url:
#     while True:
#         progress_response = requests.get(progress_url, headers=headers)
#         progress_response.raise_for_status()
#         progress_info = progress_response.json()
#         print("Migrating...", progress_info)
#
#         if progress_info['migration_status'] in ["completed", "failed"]:
#             print(f"Migration Status: {progress_info['migration_status']}")
#             break
#
#         time.sleep(5)  # Wait before checking again



# Example content_migrations element
g={'id': 3995,
 'user_id': 2641,
 'workflow_state': 'queued',
 'started_at': '2024-08-13T01:29:31Z',
 'finished_at': None,
 'migration_type': 'qti_converter',
 'created_at': '2024-08-13T01:29:31Z',
 'migration_issues_url': 'https://bart.instructure.com/api/v1/courses/1314/content_migrations/3995/migration_issues',
 'migration_issues_count': 0,
 'attachment': {'id': 159440,
                'uuid': 'Ax8ehCPOsRkE0NYZyufhyKBZkG39BS0eMclzhrqG',
                'folder_id': None,
                'display_name': 'u01_05_basic_data_analysis.zip',
                'filename': 'u01_05_basic_data_analysis.zip',
                'upload_status': 'success',
                'content-type': 'application/zip',
                'url': 'https://bart.instructure.com/files/159440/download?download_frd=1&verifier=Ax8ehCPOsRkE0NYZyufhyKBZkG39BS0eMclzhrqG',
                'size': 2590393, 'created_at': '2024-08-13T01:29:39Z', 'updated_at': '2024-08-13T01:29:39Z', 'unlock_at': None, 'locked': False, 'hidden': False, 'lock_at': None, 'hidden_for_user': False, 'thumbnail_url': None, 'modified_at': '2024-08-13T01:29:39Z', 'mime_class': 'zip', 'media_entry_id': None, 'category': 'uncategorized', 'locked_for_user': False},
 'progress_url': 'https://bart.instructure.com/api/v1/progress/62080',
 'migration_type_title': 'QTI'}

