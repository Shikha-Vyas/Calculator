node {
  def app
  //agent any
    stage('Clone Repository') {
        checkout scm
    }
    stage('Clean') {
        sh 'mvn clean'
    }
    stage('Package') {
        sh 'mvn package'
    }
    stage('Test') {
        sh 'mvn test'
    }
    
}
