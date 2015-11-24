package promosxpuntosapp

class ShopRecord {
    Date date
    String consecutive
    boolean validate

    static belongsTo = [
            reward : Reward,
            standardUser : StandardUser,
            customer : Customer
    ]

    static constraints = {
        consecutive(blank: false)
        validate(blank: false)
    }
}
