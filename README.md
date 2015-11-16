## Step 1 - AWS Environment 
```
export AWS_ACCESS_KEY_ID='--REMOVED--'
export AWS_SECRET_ACCESS_KEY='--REMOVED--'
export ANSIBLE_HOST_KEY_CHECKING=False
```

## Step 2 - Provioning infrastructure and application
```
ansible-playbook -v -i bin/ec2.py aws-deploy.yml
```

## Step 3 - Manual steps
1. create additional instance on another availability zone based on launch configuration
2. create ELB
3. create auto-scaling group and policy

## Step 4 - Test
Visit https://aws-demo-1467091873.us-east-1.elb.amazonaws.com/ VIP URL

## Step 5 - Future To Do List
1. Tightening security groups to web instances
2. Automate provisioning of ELB and Auto-Scaling (roles have been created but not tested)
3. Dockerize application & DB, have auto-scaling based on creating new instance and run ansible without creating new AMI (very slow) 

