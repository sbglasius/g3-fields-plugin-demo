<g:if test="${required}">
    <g:select name="${property}" from="${constraints.inList}" value="${value}" class="form-control"/>
</g:if>
<g:else>
    <g:select name="${property}" from="${constraints.inList}" value="${value}" noSelection="[null: '']" class="form-control"/>
</g:else>
