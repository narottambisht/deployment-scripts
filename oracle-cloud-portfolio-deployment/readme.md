# DEPLOYMENT SCRIPTS
## Deploy Portfolio Project to Oracle Cloud
This project is to deploy my personal portfolio project to oracle cloud.

Following are the steps to run this project on local machine.
1. Firstly install oci-cli on your local system using the link [oci-cli installation link](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm)
2. Configure the cli using the command ```oci setup config```
3. Run ```terraform init``` to initialize terraform OCI provider.
4. Run ```terraform plan``` to plan the resource that are about to be created.
5. Run ```terraform apply```.

### Variables
Please check the terraform.example.tfvars file for all the variables used in this terraform script.

### Pro-tip
1. Here are the list of images and their unique ids to be used for deployment [oracle images list](https://docs.oracle.com/en-us/iaas/images/)
2. There are two ssh keys used to deploy and use this terraform script. One is to authenticate the request and second is to be used for creating the instance.
3. While installing the oci-cli you'll get a .pem file which is used to authenticate the user check the variable user_private_key_path for that key. This key is used in the provider.
4. The second key is for creating the instance with that SSH key so that you can SSH into it. 
5. It is difficult to find the compatible image to create instance in the flex availability domain which allows us to customize the oCPUs and Memory, so the trick is to actually create an instance from the oracle cloud console and then from there in the instance details you can find the unique id of image.

### To-Do's
1. Try finding a way to provision into the newly created instance using terraform and then running a script, the same way Packer does.
2. Want to have an instance with pre-installed nginx, docker, node, jenkins and a bunch of other stuff.