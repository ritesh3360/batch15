pipeline {
    agent any
    stages {
        stage('pull') {
            steps {
               echo "pull success"
            }
        }
        stage('build') {
            steps {
               echo "build success"
            }
        }
        stage('test') {
            steps {
               echo "testing success"
            }
        }
        stage('Deploy') {
            steps {
               echo "deploy success"
     }
   }
 }
}
