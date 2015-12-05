package promosxpuntosapp


class Visit {

    String qrCode
    Date dateVisit

    static belongsTo = [standardUser: StandardUser, establishment: Establishment]

    static constraints = {
        qrCode(nullable: false, minSize: 10)
        dateVisit(blank: false, nullable: true)
    }


}
