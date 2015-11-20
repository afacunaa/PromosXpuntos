package promosxpuntosapp

class Visit {

    String qrCode
    Date dateVisit

    static belongsTo = [standardUser: StandardUser, estabishment: Establishment]

    static constraints = {
        qrCode(nullable: false, minSize: 10)
        dateVisit(nullable: false)
    }

}
