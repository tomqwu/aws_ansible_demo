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
The X-Backend-Server shows load-balancing works. 
```
curl -k -I 'https://aws-demo-1467091873.us-east-1.elb.amazonaws.com'
HTTP/1.1 200 OK
Content-Type: text/html; charset=UTF-8
Date: Mon, 16 Nov 2015 16:57:14 GMT
Server: nginx/1.4.6 (Ubuntu)
X-Backend-Server: ip-172-22-1-153
X-Pingback: https://aws-demo-1467091873.us-east-1.elb.amazonaws.com/xmlrpc.php
X-Powered-By: PHP/5.5.9-1ubuntu4.14
Connection: keep-alive

curl -k -I 'https://aws-demo-1467091873.us-east-1.elb.amazonaws.com'
HTTP/1.1 200 OK
Content-Type: text/html; charset=UTF-8
Date: Mon, 16 Nov 2015 16:57:15 GMT
Server: nginx/1.4.6 (Ubuntu)
X-Backend-Server: ip-172-22-2-91
X-Pingback: https://aws-demo-1467091873.us-east-1.elb.amazonaws.com/xmlrpc.php
X-Powered-By: PHP/5.5.9-1ubuntu4.14
Connection: keep-alive
```


## Step 5 - Future To Do List
1. Tightening security groups to web instances
2. Automate provisioning of ELB and Auto-Scaling (roles have been created but not tested)
3. Dockerize application & DB, have auto-scaling based on creating new instance and run ansible without creating new AMI (very slow) 

