FROM tomcat:latest
ADD https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war /usr/local/tomcat/webapps
