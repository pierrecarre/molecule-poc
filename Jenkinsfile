pipeline {
    agent any

    stages {
        stage('lint') {
            steps {
                sh 'molecule lint'
            }
        }
    }
}