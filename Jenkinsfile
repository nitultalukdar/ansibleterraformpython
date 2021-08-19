pipeline {
    agent any options { skipDefaultCheckout() }
	parameters {
        
        choice(name: 'State', choices: ['present', 'absent', 'planned'], description: 'Select the state for Ansible module')

        
    }
    stages {
			stage('Code fetch from Github') { 
				steps {
				  
					
					dir("repo")
					{
						git credentialsId: 'Githubcred', url: 'https://github.com/nitultalukdar/ansibleterraformpython.git'
				
					}
					
				}
			}
			
			
			stage('Build') { 
				steps {
					
					script{
					 
						dir("/var/lib/jenkins/workspace/terraformansible/repo")
						{
							
							sh 'ansible-galaxy collection install community.general'
							if(params.State == 'present')
							{
							sh 'ansible-playbook main.yml --extra-vars "state_var=present"'
							}
							else if(params.State == 'absent')
							{
							sh 'ansible-playbook main.yml --extra-vars "state_var=absent"'
							}
							else if(params.State == 'planned')
							{
							sh 'ansible-playbook main.yml --extra-vars "state_var=planned"'
							}
							else 
							{
							echo "Invalid State"
							}
							
						}
					
						
					}
					
			    }
			}
		}
		
    }


