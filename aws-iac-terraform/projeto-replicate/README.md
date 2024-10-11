# projeto-replicate

first projecto in aws, with objective of replicate scenarious azure.

# pre-requisities
 - terraform
 - aws cli

# how to
1-create user with permissions(verify) and generate access and secret key.
2-set up authetication aws
```
aws configure
```
input: 
    accesskey=""
    secretkey=""
    region= unwritten
    output= unwritten
OBS: no specify region can to use many regions.

```
aws configure --profile
```
same input, but it's ok specify region and output.

the local to store this config is $USER/.aws
    - config
    - credentials

