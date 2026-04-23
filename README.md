# 🏗️ CloudCart Infrastructure

This directory contains the Docker Compose orchestration and database initialization scripts required to run the full CloudCart microservices platform locally.

## 🗂️ Directory Structure

```
cloudcart-infra/
├── docker-compose.yml       # Defines all services, networks, and volumes
├── database/
│   ├── init-multiple-dbs.sh # Script to create 4 isolated Postgres databases
│   └── seed.sql             # SQL script to populate the product catalog
├── .env.example             # Template for environment variables
└── .env                     # (You create this) Local environment variables
```

## 🚀 How to Run

1.  **Configure Environment:**
    Copy `.env.example` to `.env` and configure your variables (at a minimum, set a strong `JWT_SECRET`).
    ```bash
    cp .env.example .env
    ```

2.  **Start the Cluster:**
    Run Docker Compose to build and start all containers in detached mode.
    ```bash
    docker compose up --build -d
    ```

3.  **Seed the Database (First Run Only):**
    Once the `product-service` is up and running, you can seed the database with sample products.
    ```bash
    Get-Content database/seed.sql | docker exec -i cloudcart-postgres psql -U postgres -d product_db
    ```
    *(If using bash/zsh, use: `cat database/seed.sql | docker exec -i cloudcart-postgres psql -U postgres -d product_db`)*

## 🐳 Services Overview

| Service | Container Name | Port (Internal) | Host Port | Depends On |
| :--- | :--- | :--- | :--- | :--- |
| **PostgreSQL** | `cloudcart-postgres` | 5432 | 5432 | - |
| **Auth** | `cloudcart-auth-service` | 8080 | - | postgres |
| **Product** | `cloudcart-product-service` | 8080 | - | postgres |
| **Cart** | `cloudcart-cart-service` | 8080 | - | postgres |
| **Order** | `cloudcart-order-service` | 8080 | - | postgres, product, cart |
| **Frontend** | `cloudcart-frontend` | 80 | 8080 | auth, product, cart, order |

Only the Frontend NGINX server is exposed to your host machine on port `8080`. All microservice-to-microservice communication happens internally on the `cloudcart-network` Docker bridge network.
