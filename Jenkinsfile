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
			image 'maven:3.9.11'
			args '-u root -v /var/jenkins_home:/var/jenkins_home'
			}
		}
	stages {
		stage('Build') {
			steps {
				sh 'mvn --version'
				echo "Build"
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

