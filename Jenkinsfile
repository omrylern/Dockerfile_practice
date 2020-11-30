pipeline {

  agent any
  
  stages {
    stage("Get design") {
      steps{
        script {
          if (fileExists('startbootstrap-creative')) {
              echo 'Yes'
          } else {
              echo 'No'
          }
        }
        sh "git clone https://github.com/StartBootstrap/startbootstrap-creative.git"
      }
    }
  }
}
