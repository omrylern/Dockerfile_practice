pipeline {

  agent any
  
  stages {
    stage("Get design") {
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
  }
}
