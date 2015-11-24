package promosxpuntosapp

class ShopRecord {
    Date date
    String consecutive

    static belongsTo = [
            reward : Reward,
            standardUser : StandardUser,
            customer : Customer
    ]

    static constraints = {
        consecutive(blank: false)
    }
}
