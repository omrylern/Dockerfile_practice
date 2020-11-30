pipeline {

  agent any
  
  stages {
    stage("Get design") {
      steps{
        scipt{
          dir("startbootstrap-creative")
          if (!FileExist("/")) {
            sh "git clone https://github.com/StartBootstrap/startbootstrap-creative.git"
          }
        }
      }
    }
  }
}
