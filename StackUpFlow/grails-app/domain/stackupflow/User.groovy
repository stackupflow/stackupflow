package stackupflow

import java.awt.image.BufferedImage;

class User {
	
	int id
	
	String name
	String mail
	String password
	Date creationDate
	Date lastVisit
	String webSite
	Date birthDate
	//BufferedImage profilPic
	
	Collection<Question> askedQuestions
	Collection<Answer> answers
	Collection<Tag> followedTags
	Collection<Badge> earnedBadges
	
	

    static constraints = {
    }
}
