package promosxpuntosapp

class ShopRecord {
    Date date
    String consecutive

    static belongsTo = [
            user : StandardUser,
            establishment : Establishment
    ]

    static constraints = {
        consecutive(blank: false)
    }
}
