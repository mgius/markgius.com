S3BUCKET=markgius.com

deploy: deployToS3

deployToS3:
#	s3cmd sync familytree s3://$(S3BUCKET)/
	s3cmd sync images s3://$(S3BUCKET)/
	s3cmd sync resume s3://$(S3BUCKET)/
	s3cmd sync friends s3://$(S3BUCKET)/
	s3cmd sync cpgradsale s3://$(S3BUCKET)/
	s3cmd put index.html s3://$(S3BUCKET)
