
Link for our GitHub Repo - https://github.com/rbhadeshiya/ACS730_Group3_Project.git

# Two-Tier web application automation with Terraform

Our team has successfully designed and implemented a two-tier static web application hosting solution in AWS, showcasing our proficiency in cloud architecture, deployment automation, configuration management, and source control tools. Leveraging load balancers, autoscaling groups, and IAM best practices, we have created a scalable and fault-tolerant infrastructure for serving a static website. We have utilized Terraform for IaC and GitHub Actions for security scanning automation to ensure efficient and secure deployment. Through effective collaboration and utilization of team strengths, we have overcome challenges and delivered a solution that meets project requirements, demonstrating our expertise in cloud technologies and development best practices.



## Deployment

To deploy this project -

1. Clone this git repo to your local cloud9 Environment

        git clone https://github.com/rbhadeshiya/ACS730_Group3_Project.git

2. Create 3 Buckets for all 3 Environment through AWS console

        dev-group3-project        <dev env>
        staging-group3-project   <staging env>
        prod-group3-project      <prod env>

3. Upload Images in all 3 Buckets

        Yellow-Trumpet-Daffodil.jpg
        pexels-pixabay-45901.jpg
        istockphoto-183384405-170667a.jpg
        pexels-vishal-nagre-3739516.jpg

4. Create SSH key for all 3 Environment
    
        ssh-keygen -t rsa -f Group3-dev
        ssh-keygen -t rsa -f Group3-staging
        ssh-keygen -t rsa -f Group3-prod

5. Now to deploy all 3 environments dev,prod and staging follow below steps:

    1. Deploying "dev" Environment

        a. Network Deployment

        Change to the below mentioned directory.
        
            ACS730_Group3_Project/environment/dev/network/
        
        Use below commands.

            alias tf=terraform
            tf init -  This will create the configuration files for Terraform under the ACS730_Group3_Project directory.
            tf fmt - used to standardise the reformatting of Terraform configuration files
            tf validate - verifies a directory's configuration files
            tf plan - View a preview of the modified Terraform activities that you can use later.
            tf apply --auto-approve - This command facilitates the creation of or updates to infrastructures in accordance with the dependence on configuration files. 

        b. Webserver Deployment

         Change to the below mentioned directory.

            ACS730_Group3_Project/environment/dev/network/
        
        Use below commands

            alias tf=terraform
            tf init
            tf fmt
            tf validate
            tf plan
            tf apply --auto-approve

Once the deployment in development is successful, the same code will be applied to the staging environment for network and web server changes to the directory listed below.


    2. Deploying "staging" Environment

        a. Network Deployment

        Change to the below mentioned directory.
        
            ACS730_Group3_Project/environment/staging/network/
        
        Use below commands.

            alias tf=terraform
            tf init
            tf fmt
            tf validate
            tf plan
            tf apply --auto-approve 

        b. Webserver Deployment

         Change to the below mentioned directory.

            ACS730_Group3_Project/environment/staging/Webserver/
        
        Use below commands

            alias tf=terraform
            tf init
            tf fmt
            tf validate
            tf plan
            tf apply --auto-approve

Once the deployment in staging is successful, the same code will be applied to the prod environment for network and web server changes to the directory listed below.


    2. Deploying "staging" Environment

        a. Network Deployment

        Change to the below mentioned directory.
        
            ACS730_Group3_Project/environment/prod/network/
        
        Use below commands.

            alias tf=terraform
            tf init
            tf fmt
            tf validate
            tf plan
            tf apply --auto-approve 

        b. Webserver Deployment

         Change to the below mentioned directory.

            ACS730_Group3_Project/environment/prod/Webserver/
        
        Use below commands

            alias tf=terraform
            tf init
            tf fmt
            tf validate
            tf plan
            tf apply --auto-approve

Once it is successful you can now browse to your load balancer dns name and check Webserver running successfully and you can check your autoscaling groups and target groups too.

After successfully Deploying the environments don't forget to destroy all the environments because if you don't destroy your environments it will cost you high credits.

    a. Destroy "prod" environment

    ACS730_Group3_Project/environment/prod/webserver/
    tf destroy --auto-approve 
    ACS730_Group3_Project/environment/prod/network/
    tf destroy --auto-approve 

    b. Destroy "staging" environment

    ACS730_Group3_Project/environment/staging/webserver/
    tf destroy --auto-approve 
    ACS730_Group3_Project/environment/staging/network/
    tf destroy --auto-approve 

    C. Destroy "dev" environment

    ACS730_Group3_Project/environment/dev/webserver/
    tf destroy --auto-approve 
    ACS730_Group3_Project/environment/dev/network/
    tf destroy --auto-approve 

Please get in touch with us if you have any questions about the deployment of "Two-Tier Web Application Automation with Terraform"; we would be happy to respond.


rbhadeshiya@myseneca.ca 
msparmar4@myseneca.ca 
npawar@myseneca.ca 











