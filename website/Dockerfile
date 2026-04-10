# Build stage
FROM node:20-alpine AS builder

WORKDIR /app

# Copy package files
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm ci

# Copy source code
COPY . .

# Source map upload to Grafana (optional): pass at build time, e.g.
#   --build-arg GRAFANA_OBSERVABILITY_FARO_TOKEN="$GRAFANA_OBSERVABILITY_FARO_TOKEN"
# or export GRAFANA_OBSERVABILITY_FARO_TOKEN before running build-and-push.sh
ARG GRAFANA_OBSERVABILITY_FARO_TOKEN
RUN GRAFANA_OBSERVABILITY_FARO_TOKEN="${GRAFANA_OBSERVABILITY_FARO_TOKEN}" npm run build

# Production stage - use nginx to serve static files
FROM nginx:alpine

# Install wget for healthchecks
RUN apk add --no-cache wget

# Copy built static files from Next.js
COPY --from=builder /app/out /usr/share/nginx/html

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
