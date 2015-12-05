package promosxpuntosapp

class Customer extends User{
    String identification
    byte[] logo

    static hasMany = [
            establishment : Establishment,
            reward: Reward
    ]

    static mapping = {establishment fetch:"join"}

    static constraints = {
        identification(blank: false, unique: true)
        name(size: 5..50, nullable: true)
        logo(nullable: true, blank: true, maxSize: 4194304)//4MB
    }
}
