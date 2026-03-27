pipeline {
    agent any

    stages {
        stage('Validar parámetros') {
            steps {
                script {
                    if (!params.TAGS) {
                        error "Debes seleccionar un TAG"
                    }
                }
            }
        }

        stage('Preparar ejecución') {
            steps {
                script {
                    // Agregamos el @ automáticamente
                    env.TAG_TO_RUN = "@${params.TAGS}"
                }
                echo "Tag seleccionado: ${env.TAG_TO_RUN}"
            }
        }

        stage('Run Tests') {
            steps {
                bat "mvn clean verify -Dcucumber.filter.tags=${env.TAG_TO_RUN}"
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