pipeline {
  agent any

  tools {
        maven 'Maven 3.9.11' 
  }
  
  stages{
      stage("Build"){
          steps{
              echo 'Compiling sysfoo app...'
              sh 'mvn compile'
          }
      }
      stage("Test"){
          steps{
             echo 'running unit tests...'
             sh 'mvn clean test'
          }
      }
      stage("Package"){
          steps{
              echo 'packaging the app...'
              sh 'mvn -DskipTests package'
          }
      }
  }

  post{
    always{
        echo 'This pipeline is completed..'
    }
  }
}
