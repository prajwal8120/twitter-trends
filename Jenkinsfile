def registry  = 'https://admirals.jfrog.io'
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
        
        stage('Sonar Analysis'){
                steps {
                echo '<--------------- Sonar Analysis started --------------->'
                withSonarQubeEnv('sonar-cloud') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }    
                echo '<--------------- Sonar Analysis stopped  --------------->'
            }   
        }    
    }
}