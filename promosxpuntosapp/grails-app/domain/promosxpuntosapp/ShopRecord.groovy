package promosxpuntosapp

class ShopRecord {
    Date date
    String consecutive

    static belongsTo = [
            reward : Reward,
            standardUser : StandardUser,
            establishment : Establishment
    ]

    static constraints = {
        consecutive(blank: false)
    }
}
