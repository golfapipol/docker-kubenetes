FROM nginx:latest
COPY index.html /usr/share/nginx/html/
# (volume mounted) old version volumes, mounted but it not override, volume insert first then copy file
#docker run -d -p 18080:80 -v nginx:/usr/share/nginx/html/ <image_id>
# (bind mounted) fuck folder will replace index.html (but you can add index.html to fuck,   copy file then volume insert
#docker run -d -p 18081:80 -v $(pwd)/fuck:/usr/share/nginx/html/ <image_id>
