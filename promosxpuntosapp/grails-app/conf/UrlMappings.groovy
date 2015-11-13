class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }


        "/customersIndex"(view:"/faces/customersIndex")
        "/index"(view:"/faces/index")
        "/profile"(view:"/faces/profile")
        "/editStandardUser"(view:"/faces/editStandardUser")
        "/customers-module"(view: "/faces/customers-module")
        "/users-module"(view: "/faces/users-module")
        "/createdReward"(view: "/faces/createdReward")
        "/rewardDone"(view: "/faces/rewardDone")
        "/profileCustomer"(view:"/faces/profileCustomer")
        "/profileCustomer/codeQRgenerate"(view:"/faces/codeQRgenerate")

        "/"(view:"/faces/index")
        "500"(view:'/error')
	}
}
