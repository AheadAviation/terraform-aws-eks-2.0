import os, sys, boto3

def validate_bucket(argv):
  found = False
  if argv[0] != '':
    found = True

  return found

def test_s3(argv):
  s3 = boto3.client('s3')
  response = s3.upload_file('s3_upload.txt', argv[0], 's3_upload.txt')
 
  if response is not None and 'error'.lower in response:
    os.system('echo "Error uploading file to S3"')
  else:
    os.system('echo "s3_upload.txt successfully uploaded to "' +  argv[0] + '" S3 Bucket"')

if __name__ == "__main__":
  if len(sys.argv) < 2:
    os.system('echo "Invalid parameters supplied. Please provide AWS S3 Bucket name"')
    sys.exit()
 
  found_bucket = validate_bucket(sys.argv[1:])

  if not found_bucket:
    os.system('echo "No Bucket name supplied. Please provide an S3 Bucket name"')
    sys.exit()

  test_s3(sys.argv[1:])
