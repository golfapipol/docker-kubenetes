FROM nginx:latest
COPY . /tmp
RUN chmod +x /tmp/startup.sh
CMD /tmp/startup.sh
# (volume mounted) old version volumes, mounted but it not override, volume insert first then copy file
#docker run -d -p 18080:80 -v nginx:/usr/share/nginx/html/ <image_id>
# (bind mounted) fuck folder will replace index.html (but you can add index.html to fuck,   copy file then volume insert
#docker run -d -p 18081:80 -v $(pwd)/fuck:/usr/share/nginx/html/ <image_id>

#docker run -d -p 18082:80 -v $(pwd)/fuck2:/usr/share/nginx/html/ <image_id>
