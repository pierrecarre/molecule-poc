node {
    checkout scm

    docker.withServer("tcp://192.168.99.100:2376", "docker-machine-dev") {
        def moleculeImage = docker.build("molecule:${env.BUILD_ID}")
        
        moleculeImage.inside {
            stage('Lint') {
                sh 'molecule lint'
            }
        }
    }
}
