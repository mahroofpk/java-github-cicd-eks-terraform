
Best practices followed
1. Separated CI and CD jobs. Added CI dependency on CD.
2. Terraform modules are being used for less code and reusability.
3. Helm Chart is used to deploy Kubernetes manifests for Versioning, Templating, and Rollback capabilities.
4. Minimized the usage of hardcoded variables in CI/CD workflow pipelines and utilized variables to increase flexibility and simplify maintenance.  

For Application reliability and Infrastructure scalability, Deployed
1. Horizontal Pod Auto Scaling
2. Enabled Cluster Auto Scaler
3. Enabled two pod replicas for high availability.


Security Practices followed 
1. Stored AWS credentials as secrets in GitHub
2. Saved the terraform state file in the S3 repository
3. Pushed the image to ECR Private Repository
4. Scanning the docker image before the code deployed and fails if Critical vulnerabilities found

For enhanced security, We can configure an EC2 instance as a self-hosted runner and configure the AWS Credentials in that server. This way we can avoid exploiting Critical credentials in GitHub hosted runner.


Challenges faced
1. Github dynamic variable reuse between jobs.
2. Runner reconfiguration is required in different stages in GitHub actions. Ex. AWS login is required to do in both CI and CD pipelines.
3. Terraform module and latest EKS version contraints.
4. To Identify the right base image for docker with no Critical vulnerabilities.


