// node {
// 		echo "Build"
// 		echo "Test"
// 		echo "Integration test"
// 	}

//Declarative
pipeline {
	//agent any
	agent { 
		docker { 
			image 'maven:3.9.6-eclipse-temurin-17'
			args '-v $HOME/.m2:/root/.m2'
			}
		}
	stages {
		stage('Build') {
			steps {
				sh 'mvn -version'
                sh 'mvn -B clean package'
			}
		}
		stage('Test') {
			steps {				
				echo "Test"		
			}
		}
		stage('Integration Test') {
			steps {
				echo "Build"
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
				echo 'I run when status changed'
			}

		}
	}

