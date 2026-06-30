# How to remove unnecessary files:
```
for d in 00-vpc/ 10-sg/ 20-bastion/ 30-eks/ 40-ecr/; do
  echo "Removing from $d:"
  echo "  $d/.terraform"
  echo "  $d/.terraform.lock.hcl"

  rm -rf "$d/.terraform" "$d/.terraform.lock.hcl"

  echo "Deleted files from $d"
done
```

# Infrastructure creation and deletion
```
for i in 00-vpc/ 10-sg/ 20-bastion/ 30-eks/ 40-ecr/; do cd $i; terraform init ; cd .. ; done 
```
```
for i in  00-vpc/ 10-sg/ 20-bastion/ 30-eks/  40-ecr/; do cd $i; terraform plan; cd .. ; done 
```
```
for i in  00-vpc/ 10-sg/ 20-bastion/ 30-eks/   40-ecr/; do cd $i; terraform apply -auto-approve; cd .. ; done 
```
```
for i in  40-ecr/ 30-eks/ 20-bastion/ 10-sg/ 00-vpc/ ; do cd $i; terraform destroy -auto-approve; cd .. ; done 
```

# Application Architecture

14.8.github-actions-expense-infra-dev
14.9.github-actions-expense-reusable-workflows
14.10.github-actions-expense-backend
14.11.github-actions-expense-backend-deploy
14.12.github-actions-expense-frontend
14.13.github-actions-expense-frontend-deploy


14.3.runner-ec2-for-github-actions
* This repo will create ec2 instance like agent node with necessary softwares.

Github Setting -> configure runner in Github.

14.4.roboshop-infra-dev-github-actions
* This repo will create eks cluster where Github actions going to run.

once its ready, then go to runner and run below commands(not using bastion server, used only vpc, vpc peering, sg, eks).

aws configure
aws s3 ls 
aws eks updatekubeconfig --region us-east-q --name roboshop-dev
kubectl get nodes

attaching runner.

then 
reusable-workflow works as jenkins-shared-library. We can write all codes here.

catalogue and catalogue-deploy repos are applications of roboshop project.

kubectl get pods.





