pipeline {
  agent {
	dockerfile true
  }
  stages {
    stage('Build') {
      steps {
        echo 'Hello World!'
	sh 'echo myCustomEnvVar = ${myCustomEnvVar}'
	sh 'echo myOtherEnvVar = ${myOtherEnvVar}'

      }
    }
  }
}
