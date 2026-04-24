# FleetOps Infrastructure

This repository contains the deployment, orchestration, and database initialization logic for the FleetOps Vehicle Maintenance Platform.

## Contents

*   `docker-compose.yml`: The master configuration file that orchestrates the entire microservices cluster, including networks, volumes, health checks, and service dependencies.
*   `database/init-multiple-dbs.sh`: A shell script injected into the PostgreSQL container to automatically provision the necessary databases (`auth_db`, `vehicle_db`, `maintenance_db`, `request_db`) upon initialization.
*   `database/seed.sql`: Pre-populates the `vehicle_db` and `auth_db` with test vehicles, users, and drivers to ensure the app is fully functional out-of-the-box.
*   `.env.example`: Template for required environment variables.

## Usage

### 1. Configure Environment
Copy `.env.example` to `.env` and set a secure `JWT_SECRET`.

### 2. Start the Cluster
Run the following command from this directory:
```bash
docker-compose up --build -d
```

### 3. Teardown
To stop the cluster and wipe the database volumes (to trigger a fresh seed on the next start):
```bash
docker-compose down -v
```

## Network Architecture
All services are deployed within a private Docker bridge network (`fleetops-network`). 
Only the NGINX Reverse Proxy inside the `fleetops-frontend` container is exposed to the host machine on port `8080`.
