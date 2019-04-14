# AWS VPC
This code base demonstrates creating a VPC and subnets in AWS using [Terraform](https://www.terraform.io/), [Ansible](https://www.ansible.com/) and [Packer](https://www.packer.io/).
## Infrastructure
![VPC diagram](AWS&#32;vpc.png)
The Application creates an AWS VPC with the following:
* 3 AMIs for the frontend, backend, and database instances.
*	A VPC with 3 subnets
	* A public subnet that hosts the frontend of the application.
	* A public subnet that hosts the backend (api base) of the application.
	* A private subnet that hosts the database of the application.
* An internet gateway to connect the public subnet to the internet
* A NAT instance in the public frontend subnet to connect the private subnet to the public subnets
* A frontend instance in the frontend public subnet
* A backend(API) instance in the backend public subnet
* A database instance in the private subnet
* A private route table for the private instance connected to the NAT instance
* A public route table for the public instances
* A security group for the public instances
* A security group for the private instance
* A security group for the NAT instance

## Tools
* [Terraform](https://www.terraform.io/)
* [Packer](https://www.packer.io/)
* [Ansible](https://www.ansible.com/)

## Getting Started

### Setting up the application
#### Clone the repository
- `git clone https://github.com/davidshare/Terraform-VPC.git`
#### Install Ansible
- Mac and Linux users: https://wiki.alpinelinux.org/wiki/Ansible
- Windows users: http://www.oznetnerd.com/installing-ansible-windows/

#### Install Terraform
- https://www.vasos-koupparis.com/terraform-getting-started-install/

#### Install Packer
- https://www.packer.io/intro/getting-started/install.html

#### Create a free tier AWS account
- https://www.packer.io/intro/getting-started/install.html

#### Create a keypair for a region on your AWS account you just created
- To learn how to create a keypair, follow this link https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
- Download your keypair file and copy it to the terraform directory in the project
- Note: Your AWS ami and instances will be created in regions you specify, ensure to create your keypair in the region you want your instance and ami to be provisioned. Your keypair files are private to you and should not be shared with anyone you do not want to have access to your accounts instances.
- To know more about AWS regions, follow this link: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html

#### Create and get your access keys on your AWS account you just created
- https://docs.aws.amazon.com/general/latest/gr/managing-aws-access-keys.html
- note that your access keys are private and should not be exposed under any condition

#### Add your environment variables
* Create a **.env** file using the **env.sample** file as a template in the root directory
* In the **ansible** directory, create a **.env** file using the **.env.sample** file - this file will be copied into the backend directory while provisioning the backend image.

#### Change the region you want to provision your instance
-	Open the **packer_template.json** file in the packer directory. In the builders section, replace the values of the region with your own region

		 `"region": "eu-west-1"`
- Open the priv_sub.tf, sub1_variables.tf, and sub2_variables.tf files to change the availability zones for the subnets


### Deploying
To deploy the application, navigate to the root directory of the cloned repository on the terminal and run `bash start.sh`
## Contributing
- Clone the repository - `git clone https://github.com/davidshare/Terraform-VPC.git`
- Follow the setup process above
- Create a branch off the develop branch
- Write your scripts and push to create a pull request
- Your pull request will be reviewed and then merged


