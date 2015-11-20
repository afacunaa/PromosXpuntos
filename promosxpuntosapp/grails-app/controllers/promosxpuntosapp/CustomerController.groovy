package promosxpuntosapp


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Customer.list(params), model: [customerInstanceCount: Customer.count()]
    }

    def show(Customer customerInstance) {
        respond customerInstance
    }

    def establecimientos = {
        def custom = Customer.findByNickname((String) params.nickname)
        session.customer = custom
        redirect controller: "establishmentList"
    }

    def create() {
        respond new Customer(params)
    }

    def logIn(){
        if (Establishment.findByNicknameEstablishment(params.nickname)!=null){
            def establishment = Establishment.findByNicknameEstablishment(params.nickname)
            if (establishment){
                if (establishment.password==params.password){
                    session.establishment=establishment
                    redirect controller: "profileEstablishment"
                    return
                }else{
                    redirect controller: "customersIndex", fragment: "ingreso"
                    flash.message = "Contraseña incorrecta"
                    return
                }
            }else{
                redirect controller: "customersIndex", fragment: "ingreso"
                flash.message = "Nombre de Usuario incorrecto"
                return
            }
        }
        else {
            def cliente = Customer.findByNickname(params.nickname)
            if (cliente){
                if (cliente.password==params.password){
                    session.user=cliente
                    redirect controller: "profileCustomer"
                    return
                }else{
                    redirect controller: "customersIndex", fragment: "ingreso"
                    flash.message = "Contraseña incorrecta"
                    return
                }
            }else{
                redirect controller: "customersIndex", fragment: "ingreso"
                flash.message = "Nombre de Usuario incorrecto"
                return
            }
        }
    }

    def logOut(){
        session.customer=null
        redirect controller: "customersIndex"
    }

    @Transactional
    def save(Customer customerInstance) {
        if (customerInstance == null) {
            notFound()
            return
        }
        if (customerInstance.hasErrors()) {
            respond customerInstance.errors, view: "/faces/customersIndex", fragment: "subscribe"
            return
        }
        customerInstance.save flush: true
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customer.label', default: 'Customer'), customerInstance.id])
                session.user=customerInstance
                redirect controller: "profileCustomer"
            }
            '*' { respond customerInstance, [status: CREATED] }
        }
    }

    def edit(Customer customerInstance) {
        respond customerInstance
    }

    def displayPicture = {
        def customerPicture = Customer.findByNickname((String) params.nickname)
        if (!customerPicture || !customerPicture.logo) {
            response.sendError(404)
            return
        }
        response.contentType = customerPicture.logo
        response.contentLength = customerPicture.logo.size()
        OutputStream out = response.outputStream
        out.write(customerPicture.logo)
        out.write(customerPicture.logo)
        out.close()
    }

    @Transactional
    def update(Customer customerInstance) {
        if (customerInstance == null) {
            notFound()
            return
        }

        if (customerInstance.hasErrors()) {
            respond customerInstance.errors, view: 'edit'
            return
        }

        customerInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Customer.label', default: 'Customer'), customerInstance.id])
                redirect customerInstance
            }
            '*' { respond customerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Customer customerInstance) {

        if (customerInstance == null) {
            notFound()
            return
        }

        customerInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Customer.label', default: 'Customer'), customerInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customer.label', default: 'Customer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
