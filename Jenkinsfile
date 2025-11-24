// node {
// 		echo "Build"
// 		echo "Test"
// 		echo "Integration test"
// 	}

//Declarative
pipeline {

    //agent { docker { image 'maven:3.6.3'} }
	agent any
    stages {

        stage('Build') {
       
            steps {
                //sh 'mvn --version'
                echo "Build"
				echo "$PATH"
				echo "BUILD_NUMBER - $env.BUILD_NUMBER"
				echo "Build ID - $env.BUILD_ID"
				echo "Job Name - $env.JOB_NAME"
				echo "Build tag - $env.BUILD_TAG"
				echo "Build URL - $env.BUILD_URL"
            }
        }

        stage('Test') {
            steps {
                echo "Test"
            }
        }

        stage('Integration Test') {
            steps {
                echo "Integration Test"
            }
        }
    }

    post {
        always {
            echo 'I run always'
        }
        success {
            echo 'I run when you are successful'
        }
        failure {
            echo 'I run when you fail'
        }
        changed {
            echo 'I run when the status changes'
        }
    }
}
