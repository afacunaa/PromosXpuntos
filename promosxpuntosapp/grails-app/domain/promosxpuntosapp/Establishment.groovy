package promosxpuntosapp

class Establishment {
    String name
    String address
    String telephoneNumber
    String password
    String nicknameEstablishment

    static hasMany = [
            shopRecords : ShopRecord,
            rewards: Reward,
            visits: Visit
    ]

    static belongsTo = [
            customer : Customer
    ]

    static constraints = {
        name(size: 5..50)
        address(blank: false)
        telephoneNumber(size: 7..20)
    }
}
