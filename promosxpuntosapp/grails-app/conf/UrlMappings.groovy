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
        "/profile/editStandardUser"(view:"/faces/editStandardUser")
        "/profile/QRScanner"(view:"/faces/QRScanner")
        "/profileCustomer/createEstablishment"(view:"/faces/createEstablishment")
        "/customers-module"(view: "/faces/customers-module")
        "/users-module"(view: "/faces/users-module")
        "/createdReward"(view: "/faces/createdReward")
        "/rewardDone"(view: "/faces/rewardDone")
        "/visitDone"(view: "/faces/visitDone")
        "/profileEstablishment"(view:"/faces/profileEstablishment")
        "/profileEstablishment/validateShopRecord"(view:"/faces/validateShopRecord")
        "/profileCustomer"(view:"/faces/profileCustomer")
        "/profileCustomer/codeQRgenerate"(view:"/faces/codeQRgenerate")
        "/establishmentList"(view:"/faces/EstablishmentList")
        "/customerList"(view:"/faces/customerList")

        "/"(view:"/faces/index")
        "500"(view:'/error')
	}
}
