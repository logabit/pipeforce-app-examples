<p>Guten Tag,</p>

<p>das Formular wurde soeben ausgefüllt. Nachfolgend die Daten:</p>

<table>
    <tr><td>Name:</td><td>${antragsteller}</td></tr>
    <tr><td>Abteilung:</td><td>${abteilung}</td></tr>
    <#if zugriffTyp??>
    <tr><td>Zugriff-Typ:</td><td>${zugriffTyp}</td></tr>
    </#if>
    <#if typBeschreibung??>
    <tr><td>Typ-Beschreibung:</td><td>${typBeschreibung}</td></tr>
    </#if>
    <#if bedarfAb??>
    <tr><td>Bedarf ab:</td><td>${bedarfAb}</td></tr>
    </#if>
    <#if kommentar??>
    <tr><td>Optionale Nachricht:</td><td>${kommentar}</td></tr>
    </#if>
</table>






