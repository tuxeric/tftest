pipeline {
    agent none
    stages {
	stage ('Build') {
	    agent {
		docker {
		    image 'dckr-node-v6.12.3-060118:v04'
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
