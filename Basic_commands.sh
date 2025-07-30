:'
stages {
    stage ("Clone") {
        steps {
            git branch: "master"
            url: "Some url repo"
        }
    }

    stage("Build") {
        steps {
            sh "docker build -t <app_name>:<tag_description>"
        }
    }

    stage("Test") {
        steps {
            sh "docker run -it <app_name>:<tag_description>"
        }
    }

    stage("Package") {
        steps {
            sh "docker push <User>/<app_name>:<tag_description>"
        }
    }

    stage("Deploy") {
        steps {
            sh "echo DevOps to do: Add some 1337 deploy logic here"
        }
    }
}

'