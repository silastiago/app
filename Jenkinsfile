node{
	stage('SCM Checkout'){
		git credentialsId: 'gogs', url: 'http://git.example.com.br:10080/n0c/teste'
	}
	stage('Build Docker Image'){
		sh 'docker --privileged build  -t app .'
	}

	stage('Run Container'){
		def dockerRun = 'docker run --name app -p 8095:80 -P -d app'
		sshagent(['sshAgent']){
			sh "ssh -o StrictHostKeyChecking=no silas.medeiros@10.10.87.10 ${dockerRun}"
		}
	}
}
