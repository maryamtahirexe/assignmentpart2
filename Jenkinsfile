pipeline {
    agent any

    environment {
        PROJECT_NAME = "assignmentpart2"
        COMPOSE_FILE = "docker-compose.part2.yml"
    }

    stages {
        stage('Cloning Repository') {
            steps {
                git url: 'https://github.com/maryamtahirexe/assignmentpart2.git', branch: 'main'
            }
        }

        stage('Building Docker Images') {
            steps {
                sh "docker-compose -p $PROJECT_NAME -f $COMPOSE_FILE build"
            }
        }

        stage('Running Docker Containers') {
            steps {
                sh "docker-compose -p $PROJECT_NAME -f $COMPOSE_FILE up -d"
            }
        }

        stage('Check Running Containers') {
            steps {
                sh "docker ps"
            }
        }
    }

    post {
        success {
            echo "✅ Build completed and containers are running!"
        }
        failure {
            echo "❌ Build failed — check logs above!"
        }
    }
}
