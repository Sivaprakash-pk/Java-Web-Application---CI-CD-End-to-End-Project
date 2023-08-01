<html>
<head>
    <title>Java Application Deploy: success!</title>
</head>
<body style="text-align: center">
<h1>Welcome to My Java Web Application!</h1>
    <p>Java Web Application Deployed Successfully...</p>
    <ul>
      <li>Tools used for this Project: Git, Github, Jenkins, Maven, SonarQube Scanner, Nexus Artifact Repository Manager, Docker, Argo CD, Kubernetes, AWS, Terraform  </li>
    </ul>

    <p>Steps</p>
    <ul>
      <li>1. Upload code to Github from Local Git repository </li>
      <li>2. Jenkins Pipeline Job created </li>
      <li>3. Using Webhook Jenkins trigger option whenever commit happens on Github Jenkins job will start </li>
      <li>4. Code built by Maven </li>
      <li>5. Code quality checked by Sonarqube Code Scanner </li>
      <li>6. Artifacts copied into Nexus Artifact Repository Manager </li>
      <li>7. Docker image built using Dockerfile and Docker image pushed into Dockerhub</li>
      <li>8. New Docker image build tag uploaded into Kubernetes code Github Repository</li>
      <li>9. Once the Argo CD job is Updated with a new yaml code, the Argo CD job Deployment Code and Run the Container Pods on Amazon Kubernetes cluster</li>
    </ul>


</body>
</html>
