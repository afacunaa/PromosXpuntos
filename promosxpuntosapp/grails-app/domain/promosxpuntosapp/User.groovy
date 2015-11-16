package promosxpuntosapp

class User {
    String name
    String email
    String nickname
    String password
    byte[] picture

    static constraints = {
        name(blank: false)
        email(email: true, unique:true)
        nickname(size: 5..20, unique:true)
        password(size: 7..20, password: true)
        picture(nullable: true, blank: true, maxSize: 4194304) //4MB
    }
}
