package promosxpuntosapp

class Customer extends User{
    String identification
    String name
    String contractNumber
    Object logo
    String description

    static hasMany = [
            rewards : Reward,
            establishment : Establishment
    ]

    static constraints = {
        identification(blank: false, unique: true)
        name(size: 5..50)
        contractNumber(size: 7..20)
        description(maxSize: 500, nullable: true)
        logo(nullable: true)
    }
}
