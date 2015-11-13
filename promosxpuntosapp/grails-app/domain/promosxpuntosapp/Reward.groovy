package promosxpuntosapp

class Reward{

    String rewardName
    String description
    byte [] picture
    Date dueDateReward
    Date creationDateReward
    int point
    int available

    static constraints = {
        rewardName(blank: false,unique: true,minSize: 5,maxSize: 30)
        description(blank: false, unique: true, minSize: 20)
        picture(maxSize: 3145728 /* 16K */)
        point(blank:false, min: 1)
        creationDateReward(nullable: true )
        dueDateReward(nullable: true )
        available(blank: false, min: 1)
    }

    def randomString={
        return "hola mundo"
    }
}