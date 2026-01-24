Internet
   |
   | 80
   ▼
Nginx
   ├── /        → React static files
   └── /api     → Django (gunicorn)
                       |
                       ▼
                  PostgreSQL



To make the above system production ready.
1. Create the VPC with multiple public (min 2) and private subnets
2. Create public and private route table
3. Create NAT and IGW in public subnet
4. assosiacte rout tables to subnets
5. Create nsg for both alb and ec2. 
    - For alb inbound would it all for HTTP and HTTPS.
    - For ec2 only one inbound rule HTTP -> alb nsg
6. Create ec2 in private subnet with public ip disbaled
7. Create target groups with the above instance
8. Create ALB using the target group created.
