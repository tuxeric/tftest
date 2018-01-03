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
		npm_config_cache='npm-cache'
	    }
	    steps {
		sh 'ps -ef'
		sh 'id'
		sh 'recink run terraform -vv || true'
		sh 'sleep 3000'
	    }
	}
    }
}
