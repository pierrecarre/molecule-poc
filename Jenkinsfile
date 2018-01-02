node {
    checkout scm

    def moleculeImage = docker.build("molecule:${env.BUILD_ID}")
    moleculeImage.inside {
        stage('Lint') {
            sh 'molecule lint'
        }
        stage('Test') {
            sh 'molecule test'
        }
    }
}
