package promosxpuntosapp

import org.apache.commons.lang.RandomStringUtils

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VisitController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Visit.list(params), model: [visitInstanceCount: Visit.count()]
    }

    def show(Visit visitInstance) {
        respond visitInstance
    }

    def create() {
        respond new Visit(params)
    }

    @Transactional
    def save(Visit visitInstance) {

        def qrCode = params.qrCode.split("|")

        Establishment establishment = Establishment.findByName(qrCode[0])

        visitInstance.estabishment = establishment
        visitInstance.estabishment.id =Establishment.findById(establishment.id)

        if (visitInstance == null) {
            notFound()
            return
        }

        if (visitInstance.hasErrors()) {
            respond visitInstance.errors, view: '/faces/QRScanner'
            return
        }


        visitInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'visit.label', default: 'Visit'), visitInstance.id])
                redirect visitInstance
            }
            '*' { respond visitInstance, [status: CREATED] }
        }
    }

    def edit(Visit visitInstance) {
        respond visitInstance
    }

    @Transactional
    def update(Visit visitInstance) {
        if (visitInstance == null) {
            notFound()
            return
        }

        if (visitInstance.hasErrors()) {
            respond visitInstance.errors, view: 'edit'
            return
        }

        visitInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Visit.label', default: 'Visit'), visitInstance.id])
                redirect visitInstance
            }
            '*' { respond visitInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Visit visitInstance) {

        if (visitInstance == null) {
            notFound()
            return
        }

        visitInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Visit.label', default: 'Visit'), visitInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'visit.label', default: 'Visit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def randomString(){
        def establishment = Establishment.findByName((String) params.establishment)

        String randomString = establishment
        randomString += "|"
        RandomStringUtils randomCreator =  new RandomStringUtils()
        randomString += randomCreator.random( 10, 'abcdefghijklmnopqrstuvwqyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789')

        return randomString
    }


}
