pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        git(url: 'git@github.com:kamaok/course.git', branch: 'master', credentialsId: 'jenkins-user-ssh-key')
        sh 'mvn clean compile'
        withSonarQubeEnv('my-sonarqube-demo') {
          sh 'mvn sonar:sonar'
        }

      }
    }
  }
  parameters {
    choice(name: 'door_choice', choices: '''one
two
three
four''', description: 'What door do you choose?')
    booleanParam(name: 'CAN_DANCE', defaultValue: true, description: 'Checkbox parameter')
    string(name: 'sTrAnGePaRaM', defaultValue: 'Dance!', description: 'Do the funky chicken!')
  }
}