package promosxpuntosapp


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ShopRecordController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ShopRecord.list(params), model: [shopRecordInstanceCount: ShopRecord.count()]
    }

    def show(ShopRecord shopRecordInstance) {
        respond shopRecordInstance
    }

    def create() {
        respond new ShopRecord(params)
    }

    def validacion(){
        def shop = ShopRecord.findByConsecutive(params.consecutive)
        if (shop){
            def usuario = StandardUser.findById(ShopRecord.findByConsecutive(params.consecutive).standardUserId)
            session.foundU = usuario
            session.foundS = shop
            //shop.delete flush: true
            redirect controller: "profileEstablishment", action: "validateShopRecord"
        }else{
            session.foundU = null
            session.foundS = null
            redirect controller: "profileEstablishment", action: "validateShopRecord"
        }
    }

    @Transactional
    def save(ShopRecord shopRecordInstance) {
        if (shopRecordInstance == null) {
            notFound()
            return
        }

        if (shopRecordInstance.hasErrors()) {
            respond shopRecordInstance.errors, view: 'create'
            return
        }

        shopRecordInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'shopRecord.label', default: 'ShopRecord'), shopRecordInstance.id])
                redirect shopRecordInstance
            }
            '*' { respond shopRecordInstance, [status: CREATED] }
        }
    }

    def edit(ShopRecord shopRecordInstance) {
        respond shopRecordInstance
    }

    @Transactional
    def update(ShopRecord shopRecordInstance) {
        if (shopRecordInstance == null) {
            notFound()
            return
        }

        if (shopRecordInstance.hasErrors()) {
            respond shopRecordInstance.errors, view: 'edit'
            return
        }

        shopRecordInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ShopRecord.label', default: 'ShopRecord'), shopRecordInstance.id])
                redirect shopRecordInstance
            }
            '*' { respond shopRecordInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ShopRecord shopRecordInstance) {

        if (shopRecordInstance == null) {
            notFound()
            return
        }

        shopRecordInstance.delete flush: true
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ShopRecord.label', default: 'ShopRecord'), shopRecordInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'shopRecord.label', default: 'ShopRecord'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
