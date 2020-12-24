# Cloud Developer ND Course 2: Design for Performance and Scalability

---

## Project  Instructions

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