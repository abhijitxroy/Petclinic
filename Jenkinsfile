pipeline {
    agent any
    
    tools{
        maven "maven3"
        jdk "jdk17"
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/abhijitxroy/Petclinic.git'
            }
        }
        stage('Compile') {
            steps {
                sh "mvn clean compile"
            }
        }
        stage('Build') {
            steps {
                sh "mvn clean package -DskipTests=true"
            }
        }
        stage('Deploy') {
            steps {
                sh "cp target/*.war /opt/apache-tomcat-9.0.97/webapps"
            }
        }
    }
}