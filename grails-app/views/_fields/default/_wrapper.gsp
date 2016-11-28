<div class="form-group ${invalid ? 'has-error' : ''}">
    <label for="${field}" class="control-label">${label} <g:if test="${required}">*</g:if></label>

    <div>
        ${widget}
        <g:if test="${errors}">
            <g:each in="${errors}" var="error">
                <span class="help-block"><g:message error="${error}"/></span>
            </g:each>
        </g:if>
    </div>
</div>
