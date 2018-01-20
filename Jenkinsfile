pipeline {
    agent none
    stages {
	stage ('Build') {
	    agent {
		docker {
		    image 'dckr-node/v6.12.3:latest'
		    registryUrl 'https://722084099005.dkr.ecr.us-east-1.amazonaws.com'
		    //registryCredentialsId 'myPredefinedCredentialsInJenkins'
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
