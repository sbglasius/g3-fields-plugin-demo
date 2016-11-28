<div class="row">
<g:each in="${value}" var="rider">
    <div class="col-xs-6 col-sm-4">
    <g:link controller="rider" action="show" id="${rider.id}">
    </g:link>
        <img src="${rider.image}" class="img img-circle img-thumbnail pull-left"> ${rider.name}
    </div>
</g:each>
</div>