pipeline {

  agent any
  
  stages {
    stage("Get design") {
      steps{
        script {
          if (fileExists('startbootstrap-creative')) {
              echo 'Design already exist'
              echo ${env.GIT_COMMIT}
          } else {
              sh "git clone https://github.com/StartBootstrap/startbootstrap-creative.git"
          }
        }
      }
    }
  }
}
