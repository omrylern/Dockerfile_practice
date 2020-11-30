pipeline {

  agent any
  
  stages {
    stage("Get Design") {
      steps{
        script {
          if (fileExists('startbootstrap-creative')) {
              echo 'Design already exist'
          } else {
              sh "git clone https://github.com/StartBootstrap/startbootstrap-creative.git"
          }
        }
      }
    }
    stage("Image Build") {
      steps{
        script {
          commitId = sh(returnStdout: true, script: 'git rev-parse HEAD')
          sh "docker build --tag website:${commitID} ."
        }
      }
    }
    stage("Run container") {
      steps {
        script {
          commitId = sh(returnStdout: true, script: 'git rev-parse HEAD')
          sh """
          sudo docker ps -a | grep website && sudo docker rm -f website 
          sudo docker run --name website -p 8080:80 -d website:${commitID}
          """
        }
      }
    }
  }
}
