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
        "/ShopRecordDone"(view:"/faces/ShopRecordDone")
        "/profileCustomer/codeQRgenerate"(view:"/faces/codeQRgenerate")
        "/customerList"(view:"/faces/customerList")
        "/establishmentList"(view:"/faces/EstablishmentList")
        "/establishmentListUser"(view:"/faces/EstablishmentListUser")
        "/standardUserList"(view:"/faces/standardUserList")


        "/"(view:"/faces/index")
        "500"(view:'/error')
	}
}
