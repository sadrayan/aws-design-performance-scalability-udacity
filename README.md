# Cloud Developer ND Course 2: Design for Performance and Scalability

---

## Task 1: Create AWS Architecture Schematics
#### Part 1
You have been asked to plan and provision a cost-effective AWS infrastructure for a new social media application development project for 50,000 single-region users. The project requires the following AWS infrastructure and services. Please include your name and label all elements of the infrastructure on the diagram.

- Infrastructure in the following regions: us-east-1
- Users and Client machines
- One VPC
- Two Availability Zones
- Four Subnets (2 Public, 2 Private)
- A NAT Gateway
- A CloudFront distribution with an S3 bucket
- Web servers in the Public Subnets sized according to your usage estimates
- Application Servers in the Private Subnets sized according to your usage estimates
- DB Servers in the Private Subnets
- Web Servers Load Balanced and Autoscaled
- Application Servers Load Balanced and Autoscaled
- A Master DB in AZ1 with a read replica in AZ2

Use LucidChart or a similar diagramming application to create your schematic. Export your schematic as a PDF and save as Udacity_Diagram_1.pdf.

![Terraform_1_1](../main/screenshots/Udacity_Diagram_1.pdf?raw=true "Terraform_1_1")


Part 2
You have been asked to plan a SERVERLESS architecture schematic for a new application development project. The project requires the following AWS infrastructure and services.

- A user and client machine
- AWS Route 53
- A CloudFront Distribution
- AWS Cognito
- AWS Lambda
- API Gateway
- DynamoDB
- S3 Storage
Export your schematic as a PDF and save as Udacity_Diagram_2.pdf

![Terraform_1_1](../main/screenshots/Udacity_Diagram_2.pdf?raw=true "Terraform_1_1")


## Task 2: Calculate Infrastructure Costs
`Initial_Cost_Estimate.csv`

`Reduced_Cost_Estimate.csv`

`Increase_Cost_Estimate.csv`

## Task 3: Configure Permissions
![udacity_password_policy](../main/screenshots/udacity_password_policy.png?raw=true "udacity_password_policy.png")

UdacityCloudTrailLog.csv
[UdacityCloudTrailLog](UdacityCloudTrailLog.csv)

## Task 5 : Use Terraform to Provision AWS Infrastructure

### Exercise 1

1. In the main.tf file write the code to provision
   * AWS as the cloud provider
   * Use an existing VPC ID
   * Use an existing public subnet
   * 4 AWS t2.micro EC2 instances named Udacity T2
   * 2 m4.large EC2 instances named Udacity M4
3. Run Terraform. 

`terraform init`

4. screenshot of the 6 EC2 instances in the AWS console and save it as `Terraform_1_1`. 

`terraform apply`
![Terraform_1_1](../main/screenshots/Terraform_1_1.png?raw=true "Terraform_1_1")

5. Use Terraform to  delete the 2 m4.large instances 
6. Take an updated screenshot of the AWS console showing only the 4 t2.micro instances and save it as `Terraform_1_2`

Comment out the M4 instances, and run again

`terraform apply`
![Terraform_1_1](../main/screenshots/Terraform_1_2.png?raw=true "Terraform_1_2")

Clean up

`terraform destroy`


### Exercise 2

1. In the  Exercise_2 folder, write the code to deploy an AWS Lambda Function using Terraform. Your code should include:

   * A lambda.py file
   * A main.tf file with AWS as the provider, and IAM role for Lambda, a VPC, and a public subnet
   * An outputs.tf file
   * A variables.tf file with an AWS region
  
2. Take a screenshot of the EC2 instances page
![Terraform_vpc](../main/screenshots/Terraform_2_1.png?raw=true "Terraform_ec2")

3. Take a screenshot of the VPC page 
![Terraform_vpc](../main/screenshots/Terraform_2_2.png?raw=true "Terraform_vpc")

4. Take a screenshot of the CloudWatch log entry for the lambda function execution
![Terraform_lambda_cloudwatch](../main/screenshots/Terraform_2_3.png?raw=true "Terraform_lambda_cloudwatch")

### Task 6: Destroy the Infrastructure using Terraform and prepare for submission
![Terraform_destroy](../main/screenshots/Terraform_destroyed.png?raw=true "Terraform_destroy")