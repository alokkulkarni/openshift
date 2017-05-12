# Dockerfile
FROM registry.access.redhat.com/jboss-webserver-3/webserver30-tomcat8-openshift
EXPOSE 8080 8080
RUN curl ftp://decision:Download@ftp.sapiens.com/6.2.1.1/DM-package-6.2.1.1.tar.gz -o /opt/webserver/webapps/DM-package-6.2.1.1.tar.gz
CMD ["tar -zxvf", "/opt/webserver/webapps/DM-package-6.2.1.1.tar.gz"]
