package tour
class Team {
    String name
    String description
    static constraints = {
        description nullable: true, maxSize: 4000
    }
    static hasMany = [riders: Rider]
}
