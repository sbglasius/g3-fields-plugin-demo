package tour
class Rider {
    String name
    String image
    Integer weight
    Date born
    String speciality
    String notes
    static constraints = {
        image nullable: true, url: true
        weight nullable: true
        born validator: { value ->
            if(value.after(new Date())) { "not.born.yet" }
        }
        speciality nullable: true,
                   inList: ['Climber','Puncheur','Sprinter','All-rounder'],
                   widget: 'select'
        notes nullable: true, maxSize: 4000, widget: 'textarea'
    }
    static belongsTo = [team: Team]
}
