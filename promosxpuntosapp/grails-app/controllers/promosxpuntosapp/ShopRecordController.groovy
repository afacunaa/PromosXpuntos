package promosxpuntosapp

import org.apache.commons.lang.RandomStringUtils
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

    def redimir(){
        def user = StandardUser?.findById(params."standardUser.id")
        def customer = Customer?.findById(params."customer.id")
        print user
        print customer
        def asd = Integer.parseInt(params."reward.id")
        print asd
        def reward = Reward.findById(asd)
        def date = new Date()
        print user.points
        print user.points[customer.id]
        print customer.name
        print reward.rewardName
        print reward.point

        def shopRecordinstance= new ShopRecord( )
        shopRecordinstance.standardUser = user
        shopRecordinstance.customer = customer
        shopRecordinstance.reward = reward
        shopRecordinstance.date = date
        shopRecordinstance.consecutive = new RandomStringUtils().random( 10, 'abcdefghijklmnopqrstuvwqyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789')
        if (user.points[customer.id] >= reward.point && reward.available > 0){
            //puede redimir
            user.points[customer.id] -= reward.point
            reward.available -= 1
            shopRecordinstance.save flush:true
            user.save update:true, flush:true
            reward.save flush:true
            session.user=user
            session.shopRecord = shopRecordinstance
            redirect controller: "ShopRecordDone"
        }else{
            //no puede
            redirect controller: "EstablishmentListUser"
            flash.message = "No tienes puntos suficientes o no hay disponibilidad"
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
