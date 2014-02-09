class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		
		//"/index"(controller: "index", action: "index")

		"/"(view:"/index", controller:"home")
		"500"(view:'/error')
	}
}
