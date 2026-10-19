
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Hanzala-Naseer/laravel-jenkins.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh '''
                    cp .env.example .env
                    composer install --no-interaction --prefer-dist
                    php artisan key:generate
                '''
            }
        }

        stage('Test') {
            steps {
                sh 'php artisan test'
            }
        }
    }
}
