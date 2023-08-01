node
{
    // Delete the workspace before build starts
    cleanWs()
    
    stage('clone repo'){
        checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Sivaprakash-pk/Java-Web-Application---CI-CD-End-to-End-Project.git']])
    }
    
    stage('build code from maven'){
        def mavenHome = tool name: "maven-3.9.3", type: "maven"
        def mavenCMD = "${mavenHome}/bin/mvn"
        sh "${mavenCMD} clean package"
    }
    stage('Sonarqube code analysis'){
        withSonarQubeEnv('sonar-server-9.4'){
            def mavenHome = tool name: "maven-3.9.3", type: "maven"
            def mavenCMD = "${mavenHome}/bin/mvn"
            sh "${mavenCMD} sonar:sonar"
        }
    }
    stage('Upload build artifacts to nexus repo'){
        nexusArtifactUploader artifacts: [[artifactId: 'Example', classifier: '', file: 'target/Example-0.0.1-SNAPSHOT.war', type: 'war']], credentialsId: 'Nexus-Credential', groupId: 'in.java-siva', nexusUrl: '65.1.65.172:8080', nexusVersion: 'nexus3', protocol: 'http', repository: 'demo-java', version: '1.0-SNAPSHOT'
    }
    stage('Build Docker Image'){
        // Define the Docker image name and tag using the parameterized values
        def imageName = params.IMAGE_NAME
        def imageTag = params.IMAGE_TAG
        sh "docker build -t $imageName:$imageTag ."
        sh "docker images"
    }
    stage('Push Docker Image to DockerHub') {
        def imageName = params.IMAGE_NAME
        def imageTag = params.IMAGE_TAG
        withCredentials([usernamePassword(credentialsId: 'Dockerhubcred', passwordVariable: 'dockerHubpasswd', usernameVariable: 'dockerHubuser')]) {
        sh "echo \"\$dockerHubpasswd\" | docker login -u \"\$dockerHubuser\" --password-stdin"
        sh "docker push $imageName:$imageTag"
        sh "docker logout"
        }
    }
    stage('Argo CD Code upload & K8s Deployment') {
        withCredentials([string(credentialsId: 'Github-creds', variable: 'Github')]) {
            sh '''
                git clone https://github.com/Sivaprakash-pk/Kubernetes-code.git
                cd Kubernetes-code
                git config user.email "siva@gmail.com"
                git config user.name "Siva"
                IMAGE_TAG=${IMAGE_TAG}
                sed -i "s/replaceImageTag/${IMAGE_TAG}/g" deployment.yml
                git add deployment.yml
                git commit -m "Update deployment image to version ${IMAGE_TAG}"
                git push https://${Github}@github.com/Sivaprakash-pk/Kubernetes-code HEAD:main
            '''
        }   
    }
}
