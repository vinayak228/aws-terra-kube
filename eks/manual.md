Creating a EKS manually

Need 1 VPC and multiple private and public subnets (in diffferent AZ)

Add tags for subnets
ALL - kuberenetes.io/cluster/eks-cluster : shared
Public only - kubernetess.io/role/elb : 1
Private only - kubernetes.io/role/internal-elb : 1

Need NAT for private subnets

First create EKS control plane only in private subnets
Make sure to create
- Cluster iam role
- Node IAM role

Now create a node group and attach the node role created.

Once the nodes are up, configure kubectl and deploy apps and services

Check if ebs-csi-driver are installed. Need to create pv for apps like postgres (sts)

deploy aws-load-balancer-controller, you would need an Pod identity IAM role for it to work. Need to do pod association

Create Ingress resource. Then controller will detect it and create ALB and target groups per service in ingress

