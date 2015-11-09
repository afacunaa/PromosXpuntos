package promosxpuntosapp


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RewardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def profile={ render(view: 'customersIndex')}

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Reward.list(params), model: [rewardInstanceCount: Reward.count()]
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
            render(view: "index")
            return
        }

        if (rewardInstance.hasErrors()) {
            respond rewardInstance.errors, view: 'createdReward'
            return
        }

        rewardInstance.save flush: true
        redirect action: profile
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
            respond rewardInstance.errors, view: 'edit'
            return
        }

        rewardInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Reward.label', default: 'Reward'), rewardInstance.id])
                redirect rewardInstance
            }
            '*' { respond rewardInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Reward rewardInstance) {

        if (rewardInstance == null) {
            notFound()
            return
        }

        rewardInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Reward.label', default: 'Reward'), rewardInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reward.label', default: 'Reward'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']

    def register(){

        def reward = Reward.findByRewardName(params.rewardName)

        if(reward){
            //El usuario ya existe
            flash.message = "rewardExist'"
            render(view: 'customers')
        }
        else {
            //Nuevo Usario*/
            def pictureFile = request.getFile('picture')
            if (!okcontents.contains(pictureFile.getContentType()) && pictureFile.bytes != []) {
                flash.message = "Picture"
                render(view:'logUp', model:[reward:reward,formats:okcontents])
                return
            }
            def parameters = [rewardName     : params.rewardName
                              ,description     : params.description
                              , creationDateReward    : params.creationDateReward
                              , dueDateReward  : params.dueDateReward
                              , point   : params.point
                              , picture : pictureFile.bytes]


            def newReward = new Reward(parameters)


            if(newReward.hasErrors()){
                respond newReward.errors, view: 'createdReward'
                return
            }

            newReward.save flush: true
            request.withFormat {
                form multipartForm {
                    flash.message = message(code: 'default.updated.message', args: [message(code: 'Reward.label', default: 'Reward'), newReward.id])
                    render(view: 'customersIndex')
                }
                '*' { respond newReward, [status: OK] }
            }
            return


        }
    }

    def logUp(){

    }

}
