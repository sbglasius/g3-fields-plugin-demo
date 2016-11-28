<g:if test="${required}">
    <g:textField name="${property}" value="${value}" required="required" class="form-control"/>
</g:if>
<g:else>
    <g:textField name="${property}" value="${value}" class="form-control"/>
</g:else>