pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID     = credentials('aws-access-key')     // from Jenkins credentials
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')     // from Jenkins credentials
  }

  triggers {
    githubPush() // or use polling if GitHub webhooks aren't set up
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main',
            url: 'https://github.com/sivanbhfe/AI_stockmarket_web_Jenkins.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh 'terraform apply -auto-approve'
      }
    }
  }
}
