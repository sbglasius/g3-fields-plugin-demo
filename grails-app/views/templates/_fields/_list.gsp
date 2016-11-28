<fieldset>
<g:each in="${domainClass.persistentProperties}" var="p">
    <div class="form-group">
        <label class="control-label"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}"/></label>

        <p class="form-control-static" aria-labelledby="${p.name}-label">${body(p)}</p>
    </div>
</g:each>
</fieldset>