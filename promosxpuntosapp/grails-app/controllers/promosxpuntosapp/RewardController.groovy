package promosxpuntosapp

import org.apache.commons.lang.RandomStringUtils

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.util.Random
import java.lang.Object

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
"""
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-mm-yyyy")
        Date creationDate = null
        Date dueDate = null
        try {
            creationDate =  simpleDateFormat.parse(params.creationDateReward)
            dueDate = simpleDateFormat.parse(params.dueDateReward)
        } catch (ParseException e) {
            e.printStackTra                                 ce();
        }


        def creation = params.creationDateReward
        def due = params.dueDateReward

        print creation
        print due

        def creationArr = creation.split('-')
        def dueArr = due.split('-')

        //creationArr[2] = Integer.parseInt(creationArr[2]) - 1900
        //dueArr[2] = Integer.parseInt(dueArr[2]) - 1900

        print creationArr[2]
        print creationArr[1]
        print creationArr[0]


        //rewardInstance.creationDateReward = new Date( year: Integer.parseInt(creationArr[2]), month:Integer.parseInt(creationArr[1]), date: Integer.parseInt(creationArr[0]) )
        //rewardInstance.dueDateReward = new Date(year: Integer.parseInt(dueArr[2]), month:  Integer.parseInt(dueArr[1]), date:  Integer.parseInt(dueArr[0]))

        //rewardInstance.creationDateReward = new GregorianCalendar(Integer.parseInt(creationArr[2]), Integer.parseInt(creationArr[1]), Integer.parseInt(creationArr[0]))


        rewardInstance.dueDateReward = new GregorianCalendar(Integer.parseInt(creationArr[2]),Integer.parseInt(creationArr[1]), Integer.parseInt(creationArr[0]),0,0)

        rewardInstance.creationDateReward = new GregorianCalendar().setTime(new Date())
        // .set(Integer.parseInt(creationArr[2]),Integer.parseInt(creationArr[1]), Integer.parseInt(creationArr[0]))

        print rewardInstance.dueDateReward

        print new Date().year

"""
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

    def displayPicture = {
        def rewardPicture = Reward.findByRewardName((String) params.rewardName)
        if (!rewardPicture || !rewardPicture.picture) {
            response.sendError(404)
            return
        }
        response.contentType = rewardPicture.picture
        response.contentLength = rewardPicture.picture.size()
        OutputStream out = response.outputStream
        out.write(rewardPicture.picture)
        out.write(rewardPicture.picture)
        out.close()
    }

}
