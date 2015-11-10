package promosxpuntosapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RewardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Reward.list(params), model:[rewardInstanceCount: Reward.count()]
    }

    def show(Reward rewardInstance) {
        respond rewardInstance
    }

    def create() {
        respond new Reward(params)
    }

    @Transactional
    def save(Reward rewardInstance) {
        if (rewardInstance == null) {
            notFound()
            return
        }

        def a = params.creationDateReward.split("/")
        print a
        print a[0]
        print a[1]
        print a[2]
        rewardInstance.creationDateReward = new Date(Integer.parseInt(a[2]), Integer.parseInt(a[0]), Integer.parseInt(a[1]))

        print (rewardInstance.creationDateReward)
        def b = params.dueDateReward.split("/")
        print b
        rewardInstance.dueDateReward = new Date(Integer.parseInt(b[2]), Integer.parseInt(b[0]), Integer.parseInt(b[1]))

        if (rewardInstance.hasErrors()) {
            respond rewardInstance.errors, view: "/faces/createdReward"
            return
        }

        rewardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'reward.label', default: 'Reward'), rewardInstance.id])
                session.reward=rewardInstance
                redirect controller: "rewardDone"
            }
            '*' { respond rewardInstance, [status: CREATED] }
        }
    }

    def edit(Reward rewardInstance) {
        respond rewardInstance
    }

    @Transactional
    def update(Reward rewardInstance) {
        if (rewardInstance == null) {
            notFound()
            return
        }

        if (rewardInstance.hasErrors()) {
            respond rewardInstance.errors, view:'edit'
            return
        }

        rewardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Reward.label', default: 'Reward'), rewardInstance.id])
                redirect rewardInstance
            }
            '*'{ respond rewardInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Reward rewardInstance) {

        if (rewardInstance == null) {
            notFound()
            return
        }

        rewardInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Reward.label', default: 'Reward'), rewardInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reward.label', default: 'Reward'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
