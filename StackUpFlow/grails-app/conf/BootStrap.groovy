import stackupflow.Role
import stackupflow.User
import stackupflow.UserRole

class BootStrap {

    def init = { servletContext ->
		def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
		
		//add an admin and default user
		def adminUser = User.findByUsername('admin') ?: new User(
				username: 'admin',
				password: 'admin',
				name: 'admin',
				mail: 'admin@mail.fr',
				creationDate: '07/02/2014',
				lastVisit: '07/02/2014',
				webSite: 'google.fr',
				birthDate: '13/07/1991',
				enabled: true).save(failOnError: true)
	
		def basicUser = User.findByUsername('guest') ?: new User(
				username: 'guest',
				password: 'guest',
				name: 'guest',
				mail: 'guest@mail.fr',
				creationDate: '07/02/2014',
				lastVisit: '07/02/2014',
				webSite: 'google.fr',
				birthDate: '13/07/1991',
				//pw encoded by security plugin
				enabled: true).save(failOnError: true)
	
		if (!adminUser.authorities.contains(adminRole)) {
			UserRole.create adminUser, adminRole
		}
		if (!basicUser.authorities.contains(userRole)) {
			UserRole.create basicUser, userRole
		}
    }
    def destroy = {
    }
}
