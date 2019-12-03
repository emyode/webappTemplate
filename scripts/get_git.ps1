param(
[string]$repo="https://github.com/emyode/webappTemplate/archive/master.zip",
[string]$Remoteorigin="https://yoururl/yourproject/_git/reponame",
[string]$email = "drjp81@gmail.com",  #####
[string]$userid="drjp81" #####
)



cd $PSScriptRoot
$newpath = (join-path -Path PSScriptRoot -ChildPath "Repo")
mkdir $newpath -Force -ErrorAction Ignore

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $repo -OutFile $newpath\master.zip 
Expand-Archive $newpath\master.zip $newpath -Force


cd $newpath\InfraTemplate-master
git init
git add --all 
git commit -m "Initial commit"

git config --global user.name $userid
git config --global user.email $email

git remote add origin "https://emyodelabs.visualstudio.com/TestProject/_git/TestGarbage"
git pull --all --force
git push --all --force










