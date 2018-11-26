pipeline {
  agent any

  tools {
    maven 'maven-demo'
   }

  stages {

    stage('Checkout') {
      steps {
        git(url: 'git@github.com:kamaok/course.git', branch: 'master', credentialsId: 'jenkins-user-ssh-key')
        }
      }
    stage ('Build') {
      steps {
        sh 'mvn clean compile test'
        }
      }
    stage ('Sonar analysis') {
      steps {
          withSonarQubeEnv('my-sonarqube-demo') {
          sh 'mvn sonar:sonar'
        }
      }
    }
  }
}
