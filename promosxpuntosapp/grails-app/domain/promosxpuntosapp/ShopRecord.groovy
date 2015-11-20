package promosxpuntosapp

class ShopRecord {
    Date date
    String consecutive

    static belongsTo = [
            standardUser : StandardUser,
            establishment : Establishment
    ]

    static constraints = {
        consecutive(blank: false)
    }
}
