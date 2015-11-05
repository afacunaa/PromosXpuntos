package promosxpuntosapp

class StandardUser extends User{
    String lastname;
    String gender
    Date birthday
    String telephone
    def points = [:]

    static hasMany = [
            redeemedRewards : Reward,
            shopRecords : ShopRecord
    ]

    static constraints = {
        lastname(blank: false)
        gender(inList: ['male', 'female'])
        telephone(size: 7..10)
    }
}



