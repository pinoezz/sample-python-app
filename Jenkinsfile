node{
   try{
      def registry = "registry.digitalocean.com/oca-docr/my-python-app"
      def k8s_config_dev = "do-sgp1-test-cluster"
      def deploy_dev = "my-python-app"

      stage('Pull Repository') {
         git branch: 'staging', credentialsId: '1ca23e26-6f0e-48ae-8c22-2f9b3eab4e13', url: 'git@gitlab.com:sample-python.git'
      }
   }
}  
      stage('Build') {
         sh "DOCKER_BUILDKIT=1 docker build -t ${registry}:dev-${BUILD_NUMBER} ."
      }
      stage('Push') {
         sh "docker push ${registry}:dev-${BUILD_NUMBER}"
      }
      stage('Set k8s-context') {
         sh "kubectl config use-context ${k8s_config_dev}"
      }
      stage('Pull Helm Path') {
         dir('../oca-infra/'){
            sh "git pull origin master"
         }
    }
 
}
