pipeline{
    agent {
        label 'slave-java'
    }

    tools {
        maven 'M2_HOME'
    }

    stages{
        stage('Build Package'){
            steps{
                echo "<----------Build started---------->"
                sh 'mvn clean deploy'
                echo "<----------Build completed---------->"
            }
        }
    }
}