pipeline {
  agent any
  environment {
      secret = credentials("test")
  }
  stages {
        stage('Build') {
           steps {
                echo 'Building.. $test'
                sh 'echo $secret'
                }
        }
        stage('Test') {
                steps {
                echo 'Testing..'
                }
        }
        stage('Deploy') {
                steps {
                echo 'Deploying...'
                }
        }
}
}
