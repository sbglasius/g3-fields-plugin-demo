<g:if test="${required}">
    <g:field type="number" name="${property}" value="${value}" required="${required}" class="form-control"/>
</g:if>
<g:else>
    <g:field type="number" name="${property}" value="${value}" class="form-control"/>
</g:else>
