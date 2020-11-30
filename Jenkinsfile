pipeline 

  agent any
  
  stages {
    stage("Get design") {
      steps{
        def exists = fileExists 'startbootstrap-creative'
        script {
          if (exists) {
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
