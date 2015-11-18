package promosxpuntosapp

class Visit {

    String QRCode
    Date dateVisit

    static belongsTo = [standardUser: StandardUser, estabishment: Establishment]

    static constraints = {
        QRCode(nullable: false, minSize: 10)
        dateVisit(nullable: false)
    }

}
