# Clone repository

git clone https://github.com/vklapan/kubeplugin.git

# make the script as running file

cd kubeplugin/scripts
sudo chmod +x kubelugin.sh

# move the script to the local bin directory

sudo mv kubeplugin.sh /usr/local/bin/kubectl-resource-usage.sh

# Run the script as a kubectl plugin

kubectl resource-usage argocd pod

# Output example

Resource: pod, Namespace: argocd, Name: argocd-application-controller-0, CPU: 1/1, Memory: Running
Resource: pod, Namespace: argocd, Name: argocd-applicationset-controller-65bb5ff89-77km6, CPU: 1/1, Memory: Running
Resource: pod, Namespace: argocd, Name: argocd-dex-server-69b469f8fb-9txfv, CPU: 1/1, Memory: Running
Resource: pod, Namespace: argocd, Name: argocd-notifications-controller-64bc7c9f7-95dmj, CPU: 1/1, Memory: Running
Resource: pod, Namespace: argocd, Name: argocd-redis-867d4785f-8wvt4, CPU: 1/1, Memory: Running
Resource: pod, Namespace: argocd, Name: argocd-repo-server-5744559fff-smgf4, CPU: 1/1, Memory: Running
Resource: pod, Namespace: argocd, Name: argocd-server-697df9f478-62d6l, CPU: 1/1, Memory: Running
