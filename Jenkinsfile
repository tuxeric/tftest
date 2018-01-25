pipeline {
    agent none
    stages {
	stage ('Build') {
	    agent {
		docker {
		    image 'dckr-node/v8.9.4:latest'
		    registryUrl 'https://722084099005.dkr.ecr.us-east-1.amazonaws.com'
		    registryCredentialsId 'ecr:us-east-1:jenkins-ecr-get-login'
		}
	    }

	    environment {
		AWS_ACCESS_KEY_ID = credentials('gcraciun_aws_access_key_id')
		AWS_SECRET_ACCESS_KEY = credentials('gcraciun_aws_secret_access_key')
	    }


	    steps {
		sh 'ps -ef'
		sh 'id'
		sh 'echo $AWS_ACCESS_KEY_ID'
		sh 'recink run terraform -vv'
	    }
	}
    }
}
