pipeline {
    agent {
        label 'node1'
    }
    stages {
        stage('pull') {
            steps {
               git branch: 'main', url: 'https://github.com/ritesh3360/batch1.git'
               echo "pull success"
            }
        }
        stage('build') {
            steps {
                /opt/apache-maven-3.9.12/bin/mvn clean package
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
