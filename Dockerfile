# Base image
FROM quay.io/keycloak/keycloak:latest

# Define environment variables for subdomain and domain
ENV SUBDOMAIN=subdomain
ENV DOMAIN=yourdomain.com

# Set working directory
WORKDIR /opt/keycloak

# Entry point
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized", "--https-certificate-file=/certs/live/${SUBDOMAIN}.${DOMAIN}/fullchain.pem", "--https-certificate-key-file=/certs/live/${SUBDOMAIN}.${DOMAIN}/privkey.pem", "--https-port=8443"]
