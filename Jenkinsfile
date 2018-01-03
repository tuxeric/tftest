pipeline {
    agent none
    stages {
	stage ('Build') {
	    agent {
		docker { image 'dckr-node-v6.12.2-030118:v01' }
	    }
	    environment {
		npm_config_cache='npm-cache'
	    }
	    steps {
		sh 'recink run terraform -vv'
	    }
	}
    }
}
