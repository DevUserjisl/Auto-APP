pipeline {
    agent any

    stages {
        stage('Run Tests') {
            steps {
                script {
                    def tag = params.TAGS
                    def platform = params.PLATFORM

                    echo "Tag: ${tag}"
                    echo "Platform: ${platform}"

                    bat "mvn clean verify -Dcucumber.filter.tags=\"${tag}\" -Dplatform=${platform}"
                }
            }
        }
    }

    post {
        always {
            echo "Ejecución finalizada"
        }
        success {
            echo "Tests ejecutados correctamente ✅"
        }
        failure {
            echo "Falló la ejecución ❌"
        }
    }
}