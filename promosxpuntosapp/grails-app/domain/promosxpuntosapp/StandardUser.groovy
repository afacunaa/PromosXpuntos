package promosxpuntosapp

class StandardUser extends User{
    String lastname;
    String gender
    Date birthday
    String telephone
    def points = [:]

    static hasMany = [
            shopRecords : ShopRecord,
            rewards : Reward
    ]

    static constraints = {
        lastname(blank: false)
        gender(inList: ['Hombre', 'Mujer'])
        telephone(size: 7..10)
    }
}



