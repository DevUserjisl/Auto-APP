pipeline {
    agent any

    stages {
        stage('Run Tests') {
            steps {
                script {
                    def tag = "${params.TAGS}"
                    echo "Ejecutando con tag: ${tag}"
                    bat "mvn clean verify -Dcucumber.filter.tags=${tag}"
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