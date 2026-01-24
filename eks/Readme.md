Internet
   |
   ▼
AWS ALB (Ingress Controller)
   |
   ▼
Ingress (K8s)
   |
   ├── /        → frontend service
   └── /api     → backend service
                      |
                      ▼
                  PostgreSQL (StatefulSet)

1️⃣ Frontend
    Deployment
        2 replicas
        Service (ClusterIP)

2️⃣ Backend (Django)
    Deployment
        2 replicas
        Service (ClusterIP)

3️⃣ PostgreSQL
    StatefulSet
    PersistentVolumeClaim
    Single replica (for learning)

4️⃣ Ingress
    AWS Load Balancer Controller
    Creates ALB automatically
