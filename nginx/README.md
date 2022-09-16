# Nginx Setup

The nginx.conf file in this directory is what should be used when using a Let's Encrypt certificate with nginx in Docker. The Official Nginx Docker image should be used with this file in order to enable SSL on the website. The nginx.conf file should be copied to /etc/nginx/nginx.conf in the VM and Certbot (from Let's Encrypt) should be used to generate the certificate.