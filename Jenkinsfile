pipeline {

  agent any
  
  stages {
    stage("Get Design") {
      steps{
        script {
          if (fileExists('startbootstrap-creative')) {
              echo 'Design already exist'
              commitId = sh(returnStdout: true, script: 'git rev-parse HEAD')
              echo "${commitId}"
          } else {
              sh "git clone https://github.com/StartBootstrap/startbootstrap-creative.git"
          }
        }
      }
    }
    stage("Image Build") {
      sh "docker build --tag website:${commitID}"
    }
    stage("Run container") {
      sh """
      docker ps -a | grep website && docker rm -f website 
      sudo docker run --name website -p 8080:80 -d website:${commitID}
      """
    }
  }
}
