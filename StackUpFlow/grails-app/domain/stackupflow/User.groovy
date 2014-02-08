package stackupflow

class User {

	transient springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	
	String name
	String mail
	Date creationDate
	Date lastVisit
	String webSite
	Date birthDate
	//BufferedImage profilPic
	
	Collection<Question> askedQuestions
	Collection<Answer> answers
	Collection<Tag> followedTags
	Collection<Badge> earnedBadges

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		name blank: true
		mail blank: true
		creationDate blank: true
		lastVisit blank: true
		webSite blank: true
		birthDate blank: true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
