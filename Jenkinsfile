pipeline {
  agent any

  tools {
    maven 'maven-demo'
   }
  
   options {
    buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '3'))
    disableConcurrentBuilds()
  }


  stages {

    stage('Checkout') {
      steps {
        git(url: 'git@github.com:kamaok/course.git', branch: 'master', credentialsId: 'jenkins-user-ssh-key')
        }
      }
    stage ('Build') {
      steps {
        sh 'mvn clean compile test deploy'
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
