<%@ page import="tour.Team; tour.Rider" %>
<div class='fieldcontain required'>
    <label for='name'><g:message code="rider.name.label" default="Name"/>
        <span class='required-indicator'>*</span>
    </label><g:textField name="name" value="${rider.name}" required=""/>
</div>
<div class='fieldcontain'>
    <label for='speciality'><g:message code="rider.team.label" default="Team"/></label>
    <g:select name="team" from="${Team.list()}" optionKey="id" optionValue="name" value="${rider.team}"/>
</div>
<div class='fieldcontain required'>
    <label for='born'><g:message code="rider.born.label" default="Born"/>
        <span class='required-indicator'>*</span>
    </label><g:datePicker name="born" date="${rider.born}" required="" precision="day"/>
</div>
<div class='fieldcontain required'>
    <label for='born'><g:message code="rider.image.label" default="Image"/>
        <span class='required-indicator'>*</span>
    </label><g:textField name="image" value="${rider.image}" required=""/>
</div>
<div class='fieldcontain required'>
    <label for='weight'><g:message code="rider.weight.label" default="Weight"/>
        <span class='required-indicator'>*</span>
    </label><g:field type="number" name="weight" value="${rider.weight}" required="" min="0"/>
</div>
<div class='fieldcontain'>
    <label for='speciality'><g:message code="rider.speciality.label" default="Speciality"/></label>
    <g:select name="speciality" from="${Rider.constrainedProperties.speciality.inList}" value="${rider.speciality}"/>
</div>
<div class='fieldcontain'>
    <label for='notes'><g:message code="rider.notes.label" default="Notes"/></label>
    <g:textArea name="notes" value="${rider.notes}"/>
</div>
