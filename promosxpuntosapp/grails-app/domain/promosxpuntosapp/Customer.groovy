package promosxpuntosapp

class Customer extends User{
    String identification
    String name
    String contractNumber
    Object logo
    String description

    static hasMany = [
            establishment : Establishment
    ]

    static constraints = {
        identification(blank: false, unique: true)
        name(size: 5..50, nullable: true)
        contractNumber(size: 7..20)
        description(maxSize: 500, nullable: true)
        logo(nullable: true)
    }
}
