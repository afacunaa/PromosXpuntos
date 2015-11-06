class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }


        "/customersIndex"(view:"/faces/customersIndex")
        "/customers-module"(view: "/faces/customers-module")
        "/users-module"(view: "/faces/users-module")
        "/"(view:"/faces/index")
        "500"(view:'/error')
	}
}
