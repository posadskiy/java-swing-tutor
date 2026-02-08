# Deployment

Shared cluster config and scripts for java-swing-tutor. **Cluster-only** setup lives here; website and backend are deployed from their own **`deployment/`** folders.

## What’s here (common)

- **namespace.yaml**, **configmap.yaml**, **secrets.yaml** – shared for namespace `java-swing-tutor`
- **ingress/** – Traefik IngressRoute, Let’s Encrypt, middlewares; api-ingress.yaml (optional standard Ingress for API)
- **scripts/k3s/deploy-to-k3s.sh** – prepare cluster only (namespace, registry secret, ConfigMap, Secrets, Traefik). Does **not** deploy website or backend.
- **scripts/k3s/install-k3s.sh**, **setup-env.sh** – k3s install and env checks
- **scripts/dockerhub/create-registry-secret.sh** – Docker Hub pull secret
- **scripts/dockerhub/build-and-push-all.sh** – build and push both images (calls website and service `deployment/scripts/build-and-push.sh`)
- **scripts/common/get-version.sh** – version from pom.xml or package.json

## What’s in each app

- **website/deployment/** – website-deployment.yaml, website-service.yaml, website-network-policy.yaml, website-ingress.yaml; **scripts/deploy.sh**, **scripts/build-and-push.sh**
- **service/deployment/** – deployment.yaml, service.yaml, network-policy.yaml (java-swing-tutor-service); **scripts/deploy.sh**, **scripts/build-and-push.sh**

## Order of operations

1. Set env: `DOCKERHUB_USERNAME`, `DOCKERHUB_TOKEN`, `K3S_SERVER_IP`, `K3S_SSH_USER`; for backend: `JAVA_SWING_TUTOR_DB_PASSWORD` etc. (see **scripts/k3s/setup-env.sh**).
2. **Prepare cluster** (from this folder):  
   `./scripts/k3s/deploy-to-k3s.sh`
3. **Build and push images**:  
   `./scripts/dockerhub/build-and-push-all.sh <version>`
4. **Deploy website**:  
   `cd ../website && ./deployment/scripts/deploy.sh <version>`
5. **Deploy backend**:  
   `cd ../service && ./deployment/scripts/deploy.sh <version>`

## Backend prerequisites

- Postgres: ConfigMap `db.url` uses `postgres-service:5432/java_swing_tutor` (or override in configmap).
- Secrets: `JAVA_SWING_TUTOR_DB_PASSWORD`, `JAVA_SWING_TUTOR_DB_USER` (see secrets.yaml).
