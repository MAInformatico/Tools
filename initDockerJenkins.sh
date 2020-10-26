docker pull jenkins/jenkins:lts;
cd <path_for_the_containers_files>; docker run -p 8080:8080 -p 50000:50000 -v <path_for_the_containers_files>:/var/jenkins_home jenkins/jenkins:lts


