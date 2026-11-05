# Load Balancer

This directory contains scripts and configurations for setting up and managing load balancers and custom HTTP headers:
- `0-custom_http_response_header`: Configures Nginx to include the custom `X-Served-By` response header.
- `1-install_load_balancer`: Installs and configures HAProxy to load-balance traffic across `web-01` and `web-02` using a round-robin algorithm.
