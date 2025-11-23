// node {
// 		echo "Build"
// 		echo "Test"
// 		echo "Integration test"
// 	}

//Declarative
pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
				echo "Build"
			}
		stage('Test') {
			steps {				
				echo "Test"		
			}
		stage('Integration Test') {
			steps {
				echo "Build"
			}
		}
	}
}
