FROM nginx:1.19.2-alpine

COPY via/via-3.x.y/src/html/ /usr/share/nginx/html
