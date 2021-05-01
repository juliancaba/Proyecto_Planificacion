node {    
    def app     
    stage('Clone repository') {               
        checkout scm    
    }           
    stage('Build image') {         
        app = docker.build("ubuntu_pytest")    
    }           
    stage('Test image') {                       
        app.inside {                 
            sh 'pytest /src/'        
        }    
    }
}