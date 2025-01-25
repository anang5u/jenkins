pipeline {
    agent none  // Tidak ada agen default di tingkat pipeline
    
    stages {
        stage('Build') {
            agent {
                dockerfile {
                    // Tentukan path Dockerfile di sini
                    filename 'Dockerfile1'
                }
            }
            steps {
                sh '''
                    node --version
                    git --version
                '''
            }
        }
        
        stage('Test') {
            agent {
                dockerfile {
                    // Tentukan path Dockerfile di sini
                    filename 'Dockerfile1'
                }
            }
            steps {
                sh '''
                    curl --version
                    npm --version
                '''
            }
        }
    }
}
