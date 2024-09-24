pipeline {
    agent any


    tools{
        maven "Maven3"
        jdk "Java17"
    }

    stages {
        stage('Build Maven') {
            steps {
             checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/alperkavusan/devops-002-pipeline']])
                //echo 'Hello World'
             bat "mvn clean install"
            }
        }


        stage('Docker Image') {
            steps {
            //echo 'Hello World'
             //bat "docker build -t kavusan/apppipe  ."
             //versiyon verilebilir versiyonlar otomatize edilebilir
             bat "docker build -t kavusan/apppipe:latest  ."
            }
        }

        stage('Docker Image to DockerHub') {
            steps {
                script{
                    withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhub')]) {
                        //bat "docker login -u kavusan -p password"
                        bat "echo login -u kavusan -p ${dockerhub}"
                        // some block
                        bat "docker push kavusan/apppipe:latest"
                    }
        stage('Deploy Kubernetes') {
            steps {
                script{
                    kubernetesDeploy ()configs: 'deploymentservice.yaml',  kubeconfigId: 'kubernetes')


                }




            }
        }



                }

            }
        }
    }
}
