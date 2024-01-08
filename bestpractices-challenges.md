
Best praticed followed
1. Seperated CI and CD jobs. Added CI dependency on CD.
2. Terraform modules are being used for less code and reuability.
3. Helm Chart is used to deploy Kubernetes manifests for Versioning, Templating and Rollback capabilities.
4. Minimized the usage of hardcoded variables in CI/CD workflow pipelines and utilized variables to increased flexibility and simplified maintenance.  

For Application reliability and Infrastructure scalability, Deployed
1. Horizontal Pod Auto Scaling
2. Enabled Cluster Auto Scaler
3. Enabled two pod replicas for high availability.


Security Practices followed 
1. Stored AWS credentials as secrets in github
2. Saving the terraform state file in S3 repository
3. Pushed the image to ECR Private Repository
4. Scannning the docker image before code deploy and fail if Critical vulnerabilities found

For enhanced security, We can cofigure an EC2 instance as self-hosted runner and configure the AWS Credentials in that server. This way we can avoid expoiting credentials in cloud hosted runner.


Challenges faced
1. Github dynamic variable reuse between jobs.
2. Runner reconfiguration required in different stages in github actions. Ex. AWS login required to do in both CI and CD pipelines.
3. Terraform module and latest EKS version contraints.
4. To Identify right base image for docker with no Critical vulnerabilities.


