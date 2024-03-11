kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
# OR for Local
# kubectl apply -n argocd -f ./manifest_install.yaml


# Access Admin Portal

UserName : admin

Steps to get Pwd:
kubectl get secret argocd-initial-admin-secret -n argocd -o yaml
echo T2xtTUhsRTRZanRPMXU0Tw== | base64 --decode