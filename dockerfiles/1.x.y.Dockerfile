FROM nginx:1.19.2-alpine

COPY via/via-1.x.y/ /usr/share/nginx/html
