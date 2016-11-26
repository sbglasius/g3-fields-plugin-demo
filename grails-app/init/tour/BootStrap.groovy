package tour

import de.svenjacobs.loremipsum.LoremIpsum
import groovy.json.JsonSlurper
import org.grails.io.support.DefaultResourceLoader

class BootStrap {
    def random = new Random()
    def loremIpsum = new LoremIpsum()
    def init = { servletContext ->
        if (!Team.count()) {
            def tourData = new DefaultResourceLoader().getResource('/tourData.json')
            println tourData.file.absolutePath
            importTeamData(tourData.inputStream)
        }
    }

    void importTeamData(InputStream tourData) {
        def json = new JsonSlurper().parse(tourData)
        json.teams.each { Map team ->

            println "Creating team: $team.name with ${team.riders.size()} riders"
            def newTeam = new Team(name: team.name, description: team.description)
            team.riders.each { Map rider ->
                rider.speciality = randomSpeciality()
                rider.notes = loremIpsum.getWords(50, random.nextInt(10))
                newTeam.addToRiders(rider)
            }
            newTeam.save(failOnError: true)
        }

    }

    private String randomSpeciality() {
        List specialities =  Rider.constrainedProperties.get('speciality').inList
        specialities[random.nextInt(specialities.size())]
    }
    def destroy = {
    }
}
