pipeline {
    agent any

    environment {
        PROJECT_NAME = "assignmentpart2"
        COMPOSE_FILE = "docker-compose.part2.yml"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/maryamtahirexe/assignmentpart2.git', branch: 'main'
            }
        }

        stage('Build Docker Images') {
            steps {
                sh "docker-compose -p $PROJECT_NAME -f $COMPOSE_FILE build"
            }
        }

        stage('Run Docker Containers') {
            steps {
                sh "docker-compose -p $PROJECT_NAME -f $COMPOSE_FILE up -d"
            }
        }
    }
}
