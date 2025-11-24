// node {
// 		echo "Build"
// 		echo "Test"
// 		echo "Integration test"
// 	}

//Declarative
pipeline {

    //agent { docker { image 'maven:3.6.3'} }
	agent any

	environment {
		dockerHome = tool 'myDocker'
		mavenHome = tool 'myMaven'
		JAVA_HOME = "/usr/lib/jvm/temurin-17-jdk-amd64"
		PATH = "${JAVA_HOME}/bin:${dockerHome}/bin:${mavenHome}/bin:${env.PATH}"
	}

    stages {

        stage('Checkout') {
       
            steps {
                sh 'mvn --version'
				sh 'docker version'
                echo "Build"
				echo "$PATH"
				echo "BUILD_NUMBER - $env.BUILD_NUMBER"
				echo "Build ID - $env.BUILD_ID"
				echo "Job Name - $env.JOB_NAME"
				echo "Build tag - $env.BUILD_TAG"
				echo "Build URL - $env.BUILD_URL"
            }
        }
		stage ('Build info') {
			steps {
				sh 'java -version'
				sh 'mvn -version'
			}
		}
		
		stage('Compile')
		{
			steps {
				sh "mvn -Dmaven.repo.local=/tmp/.m2 clean compile"
			}
		}

        stage('Test') {
            steps {
                sh "mvn -Dmaven.repo.local=/tmp/.m2 test"
            }
        }

        stage('Integration Test') {
            steps {
                sh "mvn -Dmaven.repo.local=/tmp/.m2 failsafe:integration-test failsafe:verify"
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
