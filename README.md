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

## Step 3 - Manual steps (roles have been created, but not tested due to time constrain)
1. create additional instance based on launch configuration
2. create ELB
3. create auto-scaling group and policy

