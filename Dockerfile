from maven as maven 

copy ./ /new/
workdir /new/
run mvn package 


######
from tomcat

copy --from=maven /new/target/*.war /usr/local/tomcat/webapps/ROOT.war

workdir /usr/local/tomcat/

run rm -rf /usr/local/tomcat/webapps/ROOT


