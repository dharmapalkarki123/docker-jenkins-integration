stage('Docker Login & Push') {
    steps {
        script {
            docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-cred') {
                def app = docker.image('dharmapaldev/docker-jenkins-integration:latest')
                app.push()
            }
        }
    }
}