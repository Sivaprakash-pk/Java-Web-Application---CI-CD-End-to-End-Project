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
      <li>4. Using Jenkins job code built by Maven </li>
      <li>5. Using Jenkins job code quality checked by Sonarqube Code Scanner </li>
      <li>6. Using Jenkins job Artifacts copied into Nexus Artifact Repository Manager </li>
      <li>7. Using Jenkins job Docker image build with Dockerfile and Docker imaged pushed into Dockerhub</li>
      <li>8. Using Jenkins job Argo CD gets a New Docker image build tag and uploaded into Argo CD Repository </li>
      <li>9. Using Jenkins job Once Argo CD is Updated, the Argo CD job Deployment Code and Run the Container Pods on Amazon EC2 using SSH Agent</li>
    </ul>


</body>
</html>
