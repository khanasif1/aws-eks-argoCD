
###########################################################################
##############################Web DEPLOYMENT###############################

cd C:\_dev\_github\kubernetesMicroserviceApp\k8.kubernetesWorld.Web
docker build -t k8_web:rc0 .
docker run -d -p 8080:80  --name k8_web k8_web:rc0
Start-Process "http://localhost:8080/home/index"

docker run -d -p 8080:80  --name k8_web k8_web:rc2
Start-Process "http://localhost:8080/home/index"

docker tag k8_web:rc0 khanasif1/k8_web:rc0
docker push khanasif1/k8_web:rc0
docker pull khanasif1/k8_web:rc0
docker run -d -p 8080:80  --name k8_web2 khanasif1/k8_web:rc0


docker tag k8_web:rc2 khanasif1/k8_web:rc2
docker push khanasif1/k8_web:rc2
docker pull khanasif1/k8_web:rc2
docker run -d -p 8080:80  --name k8_web2 khanasif1/k8_web:rc2