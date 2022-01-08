<p>Guten Tag,</p>

<p>das Formular wurde soeben ausgefüllt. Nachfolgend die Daten:</p>

<table>
    <tr><td>Name:</td><td>${antragsteller}</td></tr>
    <tr><td>Genehmigt durch:</td><td>${genehmigtDurch}</td></tr>
    <tr><td>Geräte-Typ:</td><td>${geraetTyp}</td></tr>
    <#if beschreibung??>
        <tr><td>Beschreibung:</td><td>${beschreibung}</td></tr>
    </#if>
    <#if bedarfAb??>
        <tr><td>Bedarf ab:</td><td>${bedarfAb}</td></tr>
    </#if>
    <#if kommentar??>
        <tr><td>Optionale Nachricht:</td><td>${kommentar}</td></tr>
    </#if>
</table>
