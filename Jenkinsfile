pipeline {

  agent any
  
  stages {
    stage("Get design") {
      steps{
        script {
          if (fileExists('startbootstrap-creative')) {
              echo 'Design already exist'
              commitId = sh(returnStdout: true, script: 'git rev-parse HEAD')
              echo '${commitId}'
          } else {
              sh "git clone https://github.com/StartBootstrap/startbootstrap-creative.git"
          }
        }
      }
    }
  }
}
