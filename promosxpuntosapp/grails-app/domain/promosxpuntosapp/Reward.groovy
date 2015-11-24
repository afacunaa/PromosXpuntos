package promosxpuntosapp

class Reward{

    String rewardName
    String description
    byte [] picture
    Date dueDateReward
    Date creationDateReward
    int point
    int available

    static belongsTo = [customer:Customer]
    static hasMany = [shoprecord : ShopRecord]

    static constraints = {
        rewardName(blank: false,unique: true,minSize: 5,maxSize: 30)
        description(blank: false, unique: true, minSize: 20)
        picture(nullable: true, blank: true, maxSize: 4194304)//4MB
        point(blank:false, min: 1)
        creationDateReward(nullable: true )
        dueDateReward(nullable: true )
        available(blank: false, min: 1)
    }
}