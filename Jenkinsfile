pipeline {
    agent none
    stages {
	stage ('Build') {
	    agent {
		docker {
		    image 'dckr-node-v6.12.2-030118:v02'
		    args '-u 0:0'
		}
	    }
	    environment {
		AWS_ACCESS_KEY_ID = credentials(gcraciun_aws_access_key_id)
		AWS_SECRET_ACCESS_KEY = credentials(gcraciun_aws_secret_access_key)
	    }
	    steps {
		sh 'ps -ef'
		sh 'id'
		sh 'echo $AWS_ACCESS_KEY_ID'
		sh 'recink run terraform -vv || true'
		sh 'sleep 3000'
	    }
	}
    }
}
