<div class="input-group date" id="datepicker-${property}">
    <g:if test="${required}">
        <g:textField name="${property}" value="${value?.format('yyyy-MM-dd')}" required="required" class="form-control date-picker"/>
    </g:if>
    <g:else>
        <g:textField name="${property}" value="${value?.format('yyyy-MM-dd')}" class="form-control date-picker"/>
    </g:else>
    <span class="input-group-addon">
        <i class="glyphicon glyphicon-calendar bigger-110"></i>
    </span>
</div>
<asset:script>
    $('#datepicker-${property}').datepicker({
        format: "yyyy-mm-dd"
        <g:if test="${value}">
            , defaultViewDate: { year: ${value.format('yyyy')}, month: ${value.format('MM')}, day: ${value.format('dd')}}
        </g:if>
    });
</asset:script>
