pipeline {

  agent any
  
  stages {
    stage("Get design") {
      def exists = fileExists 'startbootstrap-creative'
      steps{
        if (exists) {
          echo 'Yes'
        } else {
          echo 'No'
        }
        sh "git clone https://github.com/StartBootstrap/startbootstrap-creative.git"
      }
    }
  }
}
