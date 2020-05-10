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
  stage('Build Image') {
         app=docker.build("shikha02/calculator")
      }
    stage('Push image')
      {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("calculator${env.BUILD_NUMBER}")
            app.push("latest")
        }
      }
  stage('Deploy on Node')
    {
        step([
            $class: "RundeckNotifier",
            rundeckInstance: "calculator",
            jobId: "f30eb74a-43d8-4a77-9a9c-9a8a9f1cf07f",
            includeRundeckLogs: true,
            shouldWaitForRundeckJob: true,
            shouldFailTheBuild: true,
            tailLog: true
        ])
    }
    
}
