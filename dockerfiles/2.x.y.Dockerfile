FROM nginx:1.19.2-alpine

COPY via/via-2.x.y/src/ /usr/share/nginx/html
