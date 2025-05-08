Started by user DevOps
Obtained multi-stage-multi-agent/Jenkinsfile.txt from git https://github.com/AkshayRavindran1999/akshay.ravindran
[Pipeline] Start of Pipeline
[Pipeline] stage
[Pipeline] { (Back-end)
[Pipeline] node
Running on Jenkins in /var/lib/jenkins/workspace/first-jenkins-job
[Pipeline] {
[Pipeline] checkout
Selected Git installation does not exist. Using Default
The recommended git tool is: NONE
No credentials specified
 > git rev-parse --resolve-git-dir /var/lib/jenkins/workspace/first-jenkins-job/.git # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/AkshayRavindran1999/akshay.ravindran # timeout=10
Fetching upstream changes from https://github.com/AkshayRavindran1999/akshay.ravindran
 > git --version # timeout=10
 > git --version # 'git version 2.43.0'
 > git fetch --tags --force --progress -- https://github.com/AkshayRavindran1999/akshay.ravindran +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/main^{commit} # timeout=10
Checking out Revision 6b0f14e63b24e8020ac6b1a11550c644fadf9dd5 (refs/remotes/origin/main)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f 6b0f14e63b24e8020ac6b1a11550c644fadf9dd5 # timeout=10
Commit message: "Rename README.md to multi-stage-multi-agent/README.md"
First time build. Skipping changelog.
[Pipeline] withEnv
[Pipeline] {
[Pipeline] isUnix
[Pipeline] withEnv
[Pipeline] {
[Pipeline] sh
+ docker inspect -f . maven:3.8.1-adoptopenjdk-11

Error: No such object: maven:3.8.1-adoptopenjdk-11
[Pipeline] isUnix
[Pipeline] withEnv
[Pipeline] {
[Pipeline] sh
+ docker pull maven:3.8.1-adoptopenjdk-11
3.8.1-adoptopenjdk-11: Pulling from library/maven
16ec32c2132b: Pulling fs layer
3f63509f5b97: Pulling fs layer
34d7b43f221b: Pulling fs layer
a1931e18ae45: Pulling fs layer
20904a3b2df7: Pulling fs layer
fb5c0685f15f: Pulling fs layer
a18abadafb9a: Pulling fs layer
a1931e18ae45: Waiting
20904a3b2df7: Waiting
fb5c0685f15f: Waiting
a18abadafb9a: Waiting
16ec32c2132b: Verifying Checksum
16ec32c2132b: Download complete
3f63509f5b97: Verifying Checksum
3f63509f5b97: Download complete
20904a3b2df7: Verifying Checksum
20904a3b2df7: Download complete
fb5c0685f15f: Verifying Checksum
fb5c0685f15f: Download complete
a18abadafb9a: Verifying Checksum
a18abadafb9a: Download complete
a1931e18ae45: Verifying Checksum
a1931e18ae45: Download complete
16ec32c2132b: Pull complete
34d7b43f221b: Verifying Checksum
34d7b43f221b: Download complete
3f63509f5b97: Pull complete
34d7b43f221b: Pull complete
a1931e18ae45: Pull complete
20904a3b2df7: Pull complete
fb5c0685f15f: Pull complete
a18abadafb9a: Pull complete
Digest: sha256:143ff7942b5ef5a004252405a31fa2813dfa438f08494fad1757029de5f64082
Status: Downloaded newer image for maven:3.8.1-adoptopenjdk-11
docker.io/library/maven:3.8.1-adoptopenjdk-11
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] withDockerContainer
Jenkins does not seem to be running inside a container
$ docker run -t -d -u 111:113 -w /var/lib/jenkins/workspace/first-jenkins-job -v /var/lib/jenkins/workspace/first-jenkins-job:/var/lib/jenkins/workspace/first-jenkins-job:rw,z -v /var/lib/jenkins/workspace/first-jenkins-job@tmp:/var/lib/jenkins/workspace/first-jenkins-job@tmp:rw,z -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** maven:3.8.1-adoptopenjdk-11 cat
$ docker top 8c3b6a2e0c317116e7043dc3f95e71ff1d5fa39ecb4a8e9b3fc314e539ab1818 -eo pid,comm
[Pipeline] {
[Pipeline] sh
+ mvn --version
Apache Maven 3.8.1 (05c21c65bdfed0f71a2f2ada8b84da59348c4c5d)
Maven home: /usr/share/maven
Java version: 11.0.11, vendor: AdoptOpenJDK, runtime: /opt/java/openjdk
Default locale: en_US, platform encoding: UTF-8
OS name: "linux", version: "6.8.0-1024-aws", arch: "amd64", family: "unix"
[Pipeline] }
$ docker stop --time=1 8c3b6a2e0c317116e7043dc3f95e71ff1d5fa39ecb4a8e9b3fc314e539ab1818
$ docker rm -f --volumes 8c3b6a2e0c317116e7043dc3f95e71ff1d5fa39ecb4a8e9b3fc314e539ab1818
[Pipeline] // withDockerContainer
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Front-end)
[Pipeline] node
Running on Jenkins in /var/lib/jenkins/workspace/first-jenkins-job
[Pipeline] {
[Pipeline] checkout
Selected Git installation does not exist. Using Default
The recommended git tool is: NONE
No credentials specified
 > git rev-parse --resolve-git-dir /var/lib/jenkins/workspace/first-jenkins-job/.git # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/AkshayRavindran1999/akshay.ravindran # timeout=10
Fetching upstream changes from https://github.com/AkshayRavindran1999/akshay.ravindran
 > git --version # timeout=10
 > git --version # 'git version 2.43.0'
 > git fetch --tags --force --progress -- https://github.com/AkshayRavindran1999/akshay.ravindran +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/main^{commit} # timeout=10
Checking out Revision 6b0f14e63b24e8020ac6b1a11550c644fadf9dd5 (refs/remotes/origin/main)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f 6b0f14e63b24e8020ac6b1a11550c644fadf9dd5 # timeout=10
Commit message: "Rename README.md to multi-stage-multi-agent/README.md"
[Pipeline] withEnv
[Pipeline] {
[Pipeline] isUnix
[Pipeline] withEnv
[Pipeline] {
[Pipeline] sh
+ docker inspect -f . node:16-alpine
.
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] withDockerContainer
Jenkins does not seem to be running inside a container
$ docker run -t -d -u 111:113 -w /var/lib/jenkins/workspace/first-jenkins-job -v /var/lib/jenkins/workspace/first-jenkins-job:/var/lib/jenkins/workspace/first-jenkins-job:rw,z -v /var/lib/jenkins/workspace/first-jenkins-job@tmp:/var/lib/jenkins/workspace/first-jenkins-job@tmp:rw,z -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** node:16-alpine cat
$ docker top aaa2977a5a9f1fcb49ca8d36ee8d7e65c58c5bace766e8bf700d0a8b481dedf6 -eo pid,comm
[Pipeline] {
[Pipeline] sh
+ node --version
v16.20.2
[Pipeline] }
$ docker stop --time=1 aaa2977a5a9f1fcb49ca8d36ee8d7e65c58c5bace766e8bf700d0a8b481dedf6
$ docker rm -f --volumes aaa2977a5a9f1fcb49ca8d36ee8d7e65c58c5bace766e8bf700d0a8b481dedf6
[Pipeline] // withDockerContainer
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] }
[Pipeline] // stage
[Pipeline] End of Pipeline
Finished: SUCCESS
